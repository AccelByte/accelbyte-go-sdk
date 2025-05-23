// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package key_group

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

// GetKeyGroupByBoothNameReader is a Reader for the GetKeyGroupByBoothName structure.
type GetKeyGroupByBoothNameReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetKeyGroupByBoothNameReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetKeyGroupByBoothNameOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetKeyGroupByBoothNameNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/keygroups/byBoothName returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetKeyGroupByBoothNameOK creates a GetKeyGroupByBoothNameOK with default headers values
func NewGetKeyGroupByBoothNameOK() *GetKeyGroupByBoothNameOK {
	return &GetKeyGroupByBoothNameOK{}
}

/*GetKeyGroupByBoothNameOK handles this case with default header values.

  successful operation
*/
type GetKeyGroupByBoothNameOK struct {
	Payload *platformclientmodels.KeyGroupInfo
}

func (o *GetKeyGroupByBoothNameOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/keygroups/byBoothName][%d] getKeyGroupByBoothNameOK  %+v", 200, o.ToJSONString())
}

func (o *GetKeyGroupByBoothNameOK) ToJSONString() string {
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

func (o *GetKeyGroupByBoothNameOK) GetPayload() *platformclientmodels.KeyGroupInfo {
	return o.Payload
}

func (o *GetKeyGroupByBoothNameOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.KeyGroupInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetKeyGroupByBoothNameNotFound creates a GetKeyGroupByBoothNameNotFound with default headers values
func NewGetKeyGroupByBoothNameNotFound() *GetKeyGroupByBoothNameNotFound {
	return &GetKeyGroupByBoothNameNotFound{}
}

/*GetKeyGroupByBoothNameNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37041</td><td>Ticket booth [{boothName}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetKeyGroupByBoothNameNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetKeyGroupByBoothNameNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/keygroups/byBoothName][%d] getKeyGroupByBoothNameNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetKeyGroupByBoothNameNotFound) ToJSONString() string {
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

func (o *GetKeyGroupByBoothNameNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetKeyGroupByBoothNameNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
