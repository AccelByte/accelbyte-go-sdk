// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package development

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

// DevelopmentServerConfigurationGetReader is a Reader for the DevelopmentServerConfigurationGet structure.
type DevelopmentServerConfigurationGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DevelopmentServerConfigurationGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDevelopmentServerConfigurationGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDevelopmentServerConfigurationGetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDevelopmentServerConfigurationGetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDevelopmentServerConfigurationGetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDevelopmentServerConfigurationGetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDevelopmentServerConfigurationGetOK creates a DevelopmentServerConfigurationGetOK with default headers values
func NewDevelopmentServerConfigurationGetOK() *DevelopmentServerConfigurationGetOK {
	return &DevelopmentServerConfigurationGetOK{}
}

/*DevelopmentServerConfigurationGetOK handles this case with default header values.

  development server configuration
*/
type DevelopmentServerConfigurationGetOK struct {
	Payload *amsclientmodels.APIDevelopmentServerConfigurationGetResponse
}

func (o *DevelopmentServerConfigurationGetOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationGetOK  %+v", 200, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationGetOK) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationGetOK) GetPayload() *amsclientmodels.APIDevelopmentServerConfigurationGetResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIDevelopmentServerConfigurationGetResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationGetUnauthorized creates a DevelopmentServerConfigurationGetUnauthorized with default headers values
func NewDevelopmentServerConfigurationGetUnauthorized() *DevelopmentServerConfigurationGetUnauthorized {
	return &DevelopmentServerConfigurationGetUnauthorized{}
}

/*DevelopmentServerConfigurationGetUnauthorized handles this case with default header values.

  no authorization provided
*/
type DevelopmentServerConfigurationGetUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationGetUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationGetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationGetUnauthorized) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationGetUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationGetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDevelopmentServerConfigurationGetForbidden creates a DevelopmentServerConfigurationGetForbidden with default headers values
func NewDevelopmentServerConfigurationGetForbidden() *DevelopmentServerConfigurationGetForbidden {
	return &DevelopmentServerConfigurationGetForbidden{}
}

/*DevelopmentServerConfigurationGetForbidden handles this case with default header values.

  insufficient permissions
*/
type DevelopmentServerConfigurationGetForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationGetForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationGetForbidden  %+v", 403, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationGetForbidden) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationGetForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationGetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDevelopmentServerConfigurationGetNotFound creates a DevelopmentServerConfigurationGetNotFound with default headers values
func NewDevelopmentServerConfigurationGetNotFound() *DevelopmentServerConfigurationGetNotFound {
	return &DevelopmentServerConfigurationGetNotFound{}
}

/*DevelopmentServerConfigurationGetNotFound handles this case with default header values.

  development server configuration not found
*/
type DevelopmentServerConfigurationGetNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationGetNotFound) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationGetNotFound  %+v", 404, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationGetNotFound) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationGetNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationGetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDevelopmentServerConfigurationGetInternalServerError creates a DevelopmentServerConfigurationGetInternalServerError with default headers values
func NewDevelopmentServerConfigurationGetInternalServerError() *DevelopmentServerConfigurationGetInternalServerError {
	return &DevelopmentServerConfigurationGetInternalServerError{}
}

/*DevelopmentServerConfigurationGetInternalServerError handles this case with default header values.

  internal server error
*/
type DevelopmentServerConfigurationGetInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationGetInternalServerError) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationGetInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
