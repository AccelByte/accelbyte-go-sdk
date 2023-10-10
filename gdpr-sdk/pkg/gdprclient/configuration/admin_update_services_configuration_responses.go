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

// AdminUpdateServicesConfigurationReader is a Reader for the AdminUpdateServicesConfiguration structure.
type AdminUpdateServicesConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateServicesConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateServicesConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateServicesConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateServicesConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateServicesConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /gdpr/admin/namespaces/{namespace}/services/configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateServicesConfigurationOK creates a AdminUpdateServicesConfigurationOK with default headers values
func NewAdminUpdateServicesConfigurationOK() *AdminUpdateServicesConfigurationOK {
	return &AdminUpdateServicesConfigurationOK{}
}

/*AdminUpdateServicesConfigurationOK handles this case with default header values.

  OK
*/
type AdminUpdateServicesConfigurationOK struct {
	Payload *gdprclientmodels.DTOServiceConfigurationUpdateRequest
}

func (o *AdminUpdateServicesConfigurationOK) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/services/configurations][%d] adminUpdateServicesConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateServicesConfigurationOK) ToJSONString() string {
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

func (o *AdminUpdateServicesConfigurationOK) GetPayload() *gdprclientmodels.DTOServiceConfigurationUpdateRequest {
	return o.Payload
}

func (o *AdminUpdateServicesConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateServicesConfigurationBadRequest creates a AdminUpdateServicesConfigurationBadRequest with default headers values
func NewAdminUpdateServicesConfigurationBadRequest() *AdminUpdateServicesConfigurationBadRequest {
	return &AdminUpdateServicesConfigurationBadRequest{}
}

/*AdminUpdateServicesConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateServicesConfigurationBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdateServicesConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/services/configurations][%d] adminUpdateServicesConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateServicesConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminUpdateServicesConfigurationBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateServicesConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateServicesConfigurationUnauthorized creates a AdminUpdateServicesConfigurationUnauthorized with default headers values
func NewAdminUpdateServicesConfigurationUnauthorized() *AdminUpdateServicesConfigurationUnauthorized {
	return &AdminUpdateServicesConfigurationUnauthorized{}
}

/*AdminUpdateServicesConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateServicesConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdateServicesConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/services/configurations][%d] adminUpdateServicesConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateServicesConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateServicesConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateServicesConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateServicesConfigurationInternalServerError creates a AdminUpdateServicesConfigurationInternalServerError with default headers values
func NewAdminUpdateServicesConfigurationInternalServerError() *AdminUpdateServicesConfigurationInternalServerError {
	return &AdminUpdateServicesConfigurationInternalServerError{}
}

/*AdminUpdateServicesConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateServicesConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdateServicesConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/services/configurations][%d] adminUpdateServicesConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateServicesConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateServicesConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateServicesConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
