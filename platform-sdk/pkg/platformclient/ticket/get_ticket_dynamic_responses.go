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

// GetTicketDynamicReader is a Reader for the GetTicketDynamic structure.
type GetTicketDynamicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetTicketDynamicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetTicketDynamicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetTicketDynamicNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/tickets/{boothName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetTicketDynamicOK creates a GetTicketDynamicOK with default headers values
func NewGetTicketDynamicOK() *GetTicketDynamicOK {
	return &GetTicketDynamicOK{}
}

/*GetTicketDynamicOK handles this case with default header values.

  successful operation
*/
type GetTicketDynamicOK struct {
	Payload *platformclientmodels.TicketDynamicInfo
}

func (o *GetTicketDynamicOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/tickets/{boothName}][%d] getTicketDynamicOK  %+v", 200, o.ToJSONString())
}

func (o *GetTicketDynamicOK) ToJSONString() string {
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

func (o *GetTicketDynamicOK) GetPayload() *platformclientmodels.TicketDynamicInfo {
	return o.Payload
}

func (o *GetTicketDynamicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.TicketDynamicInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTicketDynamicNotFound creates a GetTicketDynamicNotFound with default headers values
func NewGetTicketDynamicNotFound() *GetTicketDynamicNotFound {
	return &GetTicketDynamicNotFound{}
}

/*GetTicketDynamicNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37041</td><td>Ticket booth [{boothName}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetTicketDynamicNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetTicketDynamicNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/tickets/{boothName}][%d] getTicketDynamicNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetTicketDynamicNotFound) ToJSONString() string {
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

func (o *GetTicketDynamicNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetTicketDynamicNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
