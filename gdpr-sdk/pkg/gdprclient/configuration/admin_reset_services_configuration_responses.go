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

// AdminResetServicesConfigurationReader is a Reader for the AdminResetServicesConfiguration structure.
type AdminResetServicesConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminResetServicesConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminResetServicesConfigurationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminResetServicesConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminResetServicesConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/admin/namespaces/{namespace}/services/configurations/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminResetServicesConfigurationNoContent creates a AdminResetServicesConfigurationNoContent with default headers values
func NewAdminResetServicesConfigurationNoContent() *AdminResetServicesConfigurationNoContent {
	return &AdminResetServicesConfigurationNoContent{}
}

/*AdminResetServicesConfigurationNoContent handles this case with default header values.

  No Content
*/
type AdminResetServicesConfigurationNoContent struct {
}

func (o *AdminResetServicesConfigurationNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/services/configurations/reset][%d] adminResetServicesConfigurationNoContent ", 204)
}

func (o *AdminResetServicesConfigurationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminResetServicesConfigurationUnauthorized creates a AdminResetServicesConfigurationUnauthorized with default headers values
func NewAdminResetServicesConfigurationUnauthorized() *AdminResetServicesConfigurationUnauthorized {
	return &AdminResetServicesConfigurationUnauthorized{}
}

/*AdminResetServicesConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminResetServicesConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminResetServicesConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/services/configurations/reset][%d] adminResetServicesConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminResetServicesConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminResetServicesConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminResetServicesConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminResetServicesConfigurationInternalServerError creates a AdminResetServicesConfigurationInternalServerError with default headers values
func NewAdminResetServicesConfigurationInternalServerError() *AdminResetServicesConfigurationInternalServerError {
	return &AdminResetServicesConfigurationInternalServerError{}
}

/*AdminResetServicesConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminResetServicesConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminResetServicesConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/services/configurations/reset][%d] adminResetServicesConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminResetServicesConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminResetServicesConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminResetServicesConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
