// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package a_m_s_info

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// InfoSupportedInstancesReader is a Reader for the InfoSupportedInstances structure.
type InfoSupportedInstancesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *InfoSupportedInstancesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewInfoSupportedInstancesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewInfoSupportedInstancesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewInfoSupportedInstancesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewInfoSupportedInstancesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/supported-instances returns an error %d: %s", response.Code(), string(data))
	}
}

// NewInfoSupportedInstancesOK creates a InfoSupportedInstancesOK with default headers values
func NewInfoSupportedInstancesOK() *InfoSupportedInstancesOK {
	return &InfoSupportedInstancesOK{}
}

/*InfoSupportedInstancesOK handles this case with default header values.

  success
*/
type InfoSupportedInstancesOK struct {
	Payload *amsclientmodels.APIInstanceTypesForNamespaceResponse
}

func (o *InfoSupportedInstancesOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/supported-instances][%d] infoSupportedInstancesOK  %+v", 200, o.ToJSONString())
}

func (o *InfoSupportedInstancesOK) ToJSONString() string {
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

func (o *InfoSupportedInstancesOK) GetPayload() *amsclientmodels.APIInstanceTypesForNamespaceResponse {
	return o.Payload
}

func (o *InfoSupportedInstancesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIInstanceTypesForNamespaceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewInfoSupportedInstancesUnauthorized creates a InfoSupportedInstancesUnauthorized with default headers values
func NewInfoSupportedInstancesUnauthorized() *InfoSupportedInstancesUnauthorized {
	return &InfoSupportedInstancesUnauthorized{}
}

/*InfoSupportedInstancesUnauthorized handles this case with default header values.

  no authorization provided
*/
type InfoSupportedInstancesUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *InfoSupportedInstancesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/supported-instances][%d] infoSupportedInstancesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *InfoSupportedInstancesUnauthorized) ToJSONString() string {
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

func (o *InfoSupportedInstancesUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InfoSupportedInstancesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewInfoSupportedInstancesForbidden creates a InfoSupportedInstancesForbidden with default headers values
func NewInfoSupportedInstancesForbidden() *InfoSupportedInstancesForbidden {
	return &InfoSupportedInstancesForbidden{}
}

/*InfoSupportedInstancesForbidden handles this case with default header values.

  insufficient permissions
*/
type InfoSupportedInstancesForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *InfoSupportedInstancesForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/supported-instances][%d] infoSupportedInstancesForbidden  %+v", 403, o.ToJSONString())
}

func (o *InfoSupportedInstancesForbidden) ToJSONString() string {
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

func (o *InfoSupportedInstancesForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InfoSupportedInstancesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewInfoSupportedInstancesInternalServerError creates a InfoSupportedInstancesInternalServerError with default headers values
func NewInfoSupportedInstancesInternalServerError() *InfoSupportedInstancesInternalServerError {
	return &InfoSupportedInstancesInternalServerError{}
}

/*InfoSupportedInstancesInternalServerError handles this case with default header values.

  internal server error
*/
type InfoSupportedInstancesInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *InfoSupportedInstancesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/supported-instances][%d] infoSupportedInstancesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *InfoSupportedInstancesInternalServerError) ToJSONString() string {
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

func (o *InfoSupportedInstancesInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *InfoSupportedInstancesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
