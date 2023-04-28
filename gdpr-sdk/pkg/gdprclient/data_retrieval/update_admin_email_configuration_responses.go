// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

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

// UpdateAdminEmailConfigurationReader is a Reader for the UpdateAdminEmailConfiguration structure.
type UpdateAdminEmailConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateAdminEmailConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateAdminEmailConfigurationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateAdminEmailConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateAdminEmailConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateAdminEmailConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /gdpr/admin/namespaces/{namespace}/emails/configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateAdminEmailConfigurationNoContent creates a UpdateAdminEmailConfigurationNoContent with default headers values
func NewUpdateAdminEmailConfigurationNoContent() *UpdateAdminEmailConfigurationNoContent {
	return &UpdateAdminEmailConfigurationNoContent{}
}

/*UpdateAdminEmailConfigurationNoContent handles this case with default header values.

  No Content
*/
type UpdateAdminEmailConfigurationNoContent struct {
}

func (o *UpdateAdminEmailConfigurationNoContent) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] updateAdminEmailConfigurationNoContent ", 204)
}

func (o *UpdateAdminEmailConfigurationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateAdminEmailConfigurationBadRequest creates a UpdateAdminEmailConfigurationBadRequest with default headers values
func NewUpdateAdminEmailConfigurationBadRequest() *UpdateAdminEmailConfigurationBadRequest {
	return &UpdateAdminEmailConfigurationBadRequest{}
}

/*UpdateAdminEmailConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateAdminEmailConfigurationBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *UpdateAdminEmailConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] updateAdminEmailConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateAdminEmailConfigurationBadRequest) ToJSONString() string {
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

func (o *UpdateAdminEmailConfigurationBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateAdminEmailConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateAdminEmailConfigurationUnauthorized creates a UpdateAdminEmailConfigurationUnauthorized with default headers values
func NewUpdateAdminEmailConfigurationUnauthorized() *UpdateAdminEmailConfigurationUnauthorized {
	return &UpdateAdminEmailConfigurationUnauthorized{}
}

/*UpdateAdminEmailConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateAdminEmailConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *UpdateAdminEmailConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] updateAdminEmailConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateAdminEmailConfigurationUnauthorized) ToJSONString() string {
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

func (o *UpdateAdminEmailConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateAdminEmailConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateAdminEmailConfigurationInternalServerError creates a UpdateAdminEmailConfigurationInternalServerError with default headers values
func NewUpdateAdminEmailConfigurationInternalServerError() *UpdateAdminEmailConfigurationInternalServerError {
	return &UpdateAdminEmailConfigurationInternalServerError{}
}

/*UpdateAdminEmailConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateAdminEmailConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *UpdateAdminEmailConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] updateAdminEmailConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateAdminEmailConfigurationInternalServerError) ToJSONString() string {
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

func (o *UpdateAdminEmailConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateAdminEmailConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
