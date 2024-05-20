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

// AdminUpdatePlatformAccountClosureServicesConfigurationReader is a Reader for the AdminUpdatePlatformAccountClosureServicesConfiguration structure.
type AdminUpdatePlatformAccountClosureServicesConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdatePlatformAccountClosureServicesConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdatePlatformAccountClosureServicesConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdatePlatformAccountClosureServicesConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdatePlatformAccountClosureServicesConfigurationOK creates a AdminUpdatePlatformAccountClosureServicesConfigurationOK with default headers values
func NewAdminUpdatePlatformAccountClosureServicesConfigurationOK() *AdminUpdatePlatformAccountClosureServicesConfigurationOK {
	return &AdminUpdatePlatformAccountClosureServicesConfigurationOK{}
}

/*AdminUpdatePlatformAccountClosureServicesConfigurationOK handles this case with default header values.

  OK
*/
type AdminUpdatePlatformAccountClosureServicesConfigurationOK struct {
	Payload *gdprclientmodels.DTOServiceConfigurationUpdateRequest
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationOK) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminUpdatePlatformAccountClosureServicesConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationOK) ToJSONString() string {
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

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationOK) GetPayload() *gdprclientmodels.DTOServiceConfigurationUpdateRequest {
	return o.Payload
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.DTOServiceConfigurationUpdateRequest)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdatePlatformAccountClosureServicesConfigurationBadRequest creates a AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest with default headers values
func NewAdminUpdatePlatformAccountClosureServicesConfigurationBadRequest() *AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest {
	return &AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest{}
}

/*AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminUpdatePlatformAccountClosureServicesConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized creates a AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized with default headers values
func NewAdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized() *AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized {
	return &AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized{}
}

/*AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminUpdatePlatformAccountClosureServicesConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError creates a AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError with default headers values
func NewAdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError() *AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError {
	return &AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError{}
}

/*AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminUpdatePlatformAccountClosureServicesConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
