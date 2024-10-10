// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

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

// EnableCodeReader is a Reader for the EnableCode structure.
type EnableCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *EnableCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewEnableCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewEnableCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/codes/{code}/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewEnableCodeOK creates a EnableCodeOK with default headers values
func NewEnableCodeOK() *EnableCodeOK {
	return &EnableCodeOK{}
}

/*EnableCodeOK handles this case with default header values.

  successful operation
*/
type EnableCodeOK struct {
	Payload *platformclientmodels.CodeInfo
}

func (o *EnableCodeOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/codes/{code}/enable][%d] enableCodeOK  %+v", 200, o.ToJSONString())
}

func (o *EnableCodeOK) ToJSONString() string {
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

func (o *EnableCodeOK) GetPayload() *platformclientmodels.CodeInfo {
	return o.Payload
}

func (o *EnableCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.CodeInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewEnableCodeNotFound creates a EnableCodeNotFound with default headers values
func NewEnableCodeNotFound() *EnableCodeNotFound {
	return &EnableCodeNotFound{}
}

/*EnableCodeNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37142</td><td>Code [{code}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type EnableCodeNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *EnableCodeNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/codes/{code}/enable][%d] enableCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *EnableCodeNotFound) ToJSONString() string {
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

func (o *EnableCodeNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *EnableCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
