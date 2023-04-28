// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ticket

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// GetTicketBoothIDReader is a Reader for the GetTicketBoothID structure.
type GetTicketBoothIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetTicketBoothIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetTicketBoothIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetTicketBoothIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/tickets/{boothName}/id returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetTicketBoothIDOK creates a GetTicketBoothIDOK with default headers values
func NewGetTicketBoothIDOK() *GetTicketBoothIDOK {
	return &GetTicketBoothIDOK{}
}

/*GetTicketBoothIDOK handles this case with default header values.

  successful operation
*/
type GetTicketBoothIDOK struct {
	Payload *platformclientmodels.TicketBoothID
}

func (o *GetTicketBoothIDOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/tickets/{boothName}/id][%d] getTicketBoothIdOK  %+v", 200, o.ToJSONString())
}

func (o *GetTicketBoothIDOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetTicketBoothIDOK) GetPayload() *platformclientmodels.TicketBoothID {
	return o.Payload
}

func (o *GetTicketBoothIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.TicketBoothID)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTicketBoothIDNotFound creates a GetTicketBoothIDNotFound with default headers values
func NewGetTicketBoothIDNotFound() *GetTicketBoothIDNotFound {
	return &GetTicketBoothIDNotFound{}
}

/*GetTicketBoothIDNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37041</td><td>Ticket booth [{boothName}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetTicketBoothIDNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetTicketBoothIDNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/tickets/{boothName}/id][%d] getTicketBoothIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetTicketBoothIDNotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetTicketBoothIDNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetTicketBoothIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
