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

// AdminResetPlatformAccountClosureServicesConfigurationReader is a Reader for the AdminResetPlatformAccountClosureServicesConfiguration structure.
type AdminResetPlatformAccountClosureServicesConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminResetPlatformAccountClosureServicesConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminResetPlatformAccountClosureServicesConfigurationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminResetPlatformAccountClosureServicesConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminResetPlatformAccountClosureServicesConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminResetPlatformAccountClosureServicesConfigurationNoContent creates a AdminResetPlatformAccountClosureServicesConfigurationNoContent with default headers values
func NewAdminResetPlatformAccountClosureServicesConfigurationNoContent() *AdminResetPlatformAccountClosureServicesConfigurationNoContent {
	return &AdminResetPlatformAccountClosureServicesConfigurationNoContent{}
}

/*AdminResetPlatformAccountClosureServicesConfigurationNoContent handles this case with default header values.

  No Content
*/
type AdminResetPlatformAccountClosureServicesConfigurationNoContent struct {
}

func (o *AdminResetPlatformAccountClosureServicesConfigurationNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminResetPlatformAccountClosureServicesConfigurationNoContent ", 204)
}

func (o *AdminResetPlatformAccountClosureServicesConfigurationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminResetPlatformAccountClosureServicesConfigurationUnauthorized creates a AdminResetPlatformAccountClosureServicesConfigurationUnauthorized with default headers values
func NewAdminResetPlatformAccountClosureServicesConfigurationUnauthorized() *AdminResetPlatformAccountClosureServicesConfigurationUnauthorized {
	return &AdminResetPlatformAccountClosureServicesConfigurationUnauthorized{}
}

/*AdminResetPlatformAccountClosureServicesConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminResetPlatformAccountClosureServicesConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminResetPlatformAccountClosureServicesConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminResetPlatformAccountClosureServicesConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminResetPlatformAccountClosureServicesConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminResetPlatformAccountClosureServicesConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminResetPlatformAccountClosureServicesConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminResetPlatformAccountClosureServicesConfigurationInternalServerError creates a AdminResetPlatformAccountClosureServicesConfigurationInternalServerError with default headers values
func NewAdminResetPlatformAccountClosureServicesConfigurationInternalServerError() *AdminResetPlatformAccountClosureServicesConfigurationInternalServerError {
	return &AdminResetPlatformAccountClosureServicesConfigurationInternalServerError{}
}

/*AdminResetPlatformAccountClosureServicesConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminResetPlatformAccountClosureServicesConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminResetPlatformAccountClosureServicesConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/services/platforms/closure/config][%d] adminResetPlatformAccountClosureServicesConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminResetPlatformAccountClosureServicesConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminResetPlatformAccountClosureServicesConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminResetPlatformAccountClosureServicesConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
