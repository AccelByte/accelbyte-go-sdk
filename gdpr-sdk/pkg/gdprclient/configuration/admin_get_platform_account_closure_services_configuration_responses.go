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

// AdminGetPlatformAccountClosureServicesConfigurationReader is a Reader for the AdminGetPlatformAccountClosureServicesConfiguration structure.
type AdminGetPlatformAccountClosureServicesConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlatformAccountClosureServicesConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlatformAccountClosureServicesConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlatformAccountClosureServicesConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlatformAccountClosureServicesConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlatformAccountClosureServicesConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlatformAccountClosureServicesConfigurationOK creates a AdminGetPlatformAccountClosureServicesConfigurationOK with default headers values
func NewAdminGetPlatformAccountClosureServicesConfigurationOK() *AdminGetPlatformAccountClosureServicesConfigurationOK {
	return &AdminGetPlatformAccountClosureServicesConfigurationOK{}
}

/*AdminGetPlatformAccountClosureServicesConfigurationOK handles this case with default header values.

  OK
*/
type AdminGetPlatformAccountClosureServicesConfigurationOK struct {
	Payload *gdprclientmodels.DTOServicesConfigurationResponse
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminGetPlatformAccountClosureServicesConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationOK) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureServicesConfigurationOK) GetPayload() *gdprclientmodels.DTOServicesConfigurationResponse {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlatformAccountClosureServicesConfigurationUnauthorized creates a AdminGetPlatformAccountClosureServicesConfigurationUnauthorized with default headers values
func NewAdminGetPlatformAccountClosureServicesConfigurationUnauthorized() *AdminGetPlatformAccountClosureServicesConfigurationUnauthorized {
	return &AdminGetPlatformAccountClosureServicesConfigurationUnauthorized{}
}

/*AdminGetPlatformAccountClosureServicesConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetPlatformAccountClosureServicesConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminGetPlatformAccountClosureServicesConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureServicesConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlatformAccountClosureServicesConfigurationNotFound creates a AdminGetPlatformAccountClosureServicesConfigurationNotFound with default headers values
func NewAdminGetPlatformAccountClosureServicesConfigurationNotFound() *AdminGetPlatformAccountClosureServicesConfigurationNotFound {
	return &AdminGetPlatformAccountClosureServicesConfigurationNotFound{}
}

/*AdminGetPlatformAccountClosureServicesConfigurationNotFound handles this case with default header values.

  Not Found
*/
type AdminGetPlatformAccountClosureServicesConfigurationNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationNotFound) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminGetPlatformAccountClosureServicesConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationNotFound) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureServicesConfigurationNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetPlatformAccountClosureServicesConfigurationInternalServerError creates a AdminGetPlatformAccountClosureServicesConfigurationInternalServerError with default headers values
func NewAdminGetPlatformAccountClosureServicesConfigurationInternalServerError() *AdminGetPlatformAccountClosureServicesConfigurationInternalServerError {
	return &AdminGetPlatformAccountClosureServicesConfigurationInternalServerError{}
}

/*AdminGetPlatformAccountClosureServicesConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetPlatformAccountClosureServicesConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminGetPlatformAccountClosureServicesConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureServicesConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureServicesConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
