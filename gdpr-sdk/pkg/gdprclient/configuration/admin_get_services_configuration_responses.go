// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// AdminGetServicesConfigurationReader is a Reader for the AdminGetServicesConfiguration structure.
type AdminGetServicesConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetServicesConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetServicesConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetServicesConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetServicesConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetServicesConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/services/configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetServicesConfigurationOK creates a AdminGetServicesConfigurationOK with default headers values
func NewAdminGetServicesConfigurationOK() *AdminGetServicesConfigurationOK {
	return &AdminGetServicesConfigurationOK{}
}

/*AdminGetServicesConfigurationOK handles this case with default header values.

  OK
*/
type AdminGetServicesConfigurationOK struct {
	Payload *gdprclientmodels.DTOServicesConfigurationResponse
}

func (o *AdminGetServicesConfigurationOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/services/configurations][%d] adminGetServicesConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetServicesConfigurationOK) ToJSONString() string {
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

func (o *AdminGetServicesConfigurationOK) GetPayload() *gdprclientmodels.DTOServicesConfigurationResponse {
	return o.Payload
}

func (o *AdminGetServicesConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.DTOServicesConfigurationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetServicesConfigurationUnauthorized creates a AdminGetServicesConfigurationUnauthorized with default headers values
func NewAdminGetServicesConfigurationUnauthorized() *AdminGetServicesConfigurationUnauthorized {
	return &AdminGetServicesConfigurationUnauthorized{}
}

/*AdminGetServicesConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetServicesConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetServicesConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/services/configurations][%d] adminGetServicesConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetServicesConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminGetServicesConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetServicesConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetServicesConfigurationNotFound creates a AdminGetServicesConfigurationNotFound with default headers values
func NewAdminGetServicesConfigurationNotFound() *AdminGetServicesConfigurationNotFound {
	return &AdminGetServicesConfigurationNotFound{}
}

/*AdminGetServicesConfigurationNotFound handles this case with default header values.

  Not Found
*/
type AdminGetServicesConfigurationNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetServicesConfigurationNotFound) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/services/configurations][%d] adminGetServicesConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetServicesConfigurationNotFound) ToJSONString() string {
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

func (o *AdminGetServicesConfigurationNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetServicesConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetServicesConfigurationInternalServerError creates a AdminGetServicesConfigurationInternalServerError with default headers values
func NewAdminGetServicesConfigurationInternalServerError() *AdminGetServicesConfigurationInternalServerError {
	return &AdminGetServicesConfigurationInternalServerError{}
}

/*AdminGetServicesConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetServicesConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetServicesConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/services/configurations][%d] adminGetServicesConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetServicesConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminGetServicesConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetServicesConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
