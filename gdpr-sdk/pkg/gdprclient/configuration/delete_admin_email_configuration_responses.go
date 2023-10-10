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

// DeleteAdminEmailConfigurationReader is a Reader for the DeleteAdminEmailConfiguration structure.
type DeleteAdminEmailConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteAdminEmailConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteAdminEmailConfigurationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteAdminEmailConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteAdminEmailConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteAdminEmailConfigurationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteAdminEmailConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteAdminEmailConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/admin/namespaces/{namespace}/emails/configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteAdminEmailConfigurationNoContent creates a DeleteAdminEmailConfigurationNoContent with default headers values
func NewDeleteAdminEmailConfigurationNoContent() *DeleteAdminEmailConfigurationNoContent {
	return &DeleteAdminEmailConfigurationNoContent{}
}

/*DeleteAdminEmailConfigurationNoContent handles this case with default header values.

  No Content
*/
type DeleteAdminEmailConfigurationNoContent struct {
}

func (o *DeleteAdminEmailConfigurationNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] deleteAdminEmailConfigurationNoContent ", 204)
}

func (o *DeleteAdminEmailConfigurationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteAdminEmailConfigurationBadRequest creates a DeleteAdminEmailConfigurationBadRequest with default headers values
func NewDeleteAdminEmailConfigurationBadRequest() *DeleteAdminEmailConfigurationBadRequest {
	return &DeleteAdminEmailConfigurationBadRequest{}
}

/*DeleteAdminEmailConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type DeleteAdminEmailConfigurationBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *DeleteAdminEmailConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] deleteAdminEmailConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteAdminEmailConfigurationBadRequest) ToJSONString() string {
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

func (o *DeleteAdminEmailConfigurationBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAdminEmailConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteAdminEmailConfigurationUnauthorized creates a DeleteAdminEmailConfigurationUnauthorized with default headers values
func NewDeleteAdminEmailConfigurationUnauthorized() *DeleteAdminEmailConfigurationUnauthorized {
	return &DeleteAdminEmailConfigurationUnauthorized{}
}

/*DeleteAdminEmailConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteAdminEmailConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *DeleteAdminEmailConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] deleteAdminEmailConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteAdminEmailConfigurationUnauthorized) ToJSONString() string {
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

func (o *DeleteAdminEmailConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAdminEmailConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteAdminEmailConfigurationForbidden creates a DeleteAdminEmailConfigurationForbidden with default headers values
func NewDeleteAdminEmailConfigurationForbidden() *DeleteAdminEmailConfigurationForbidden {
	return &DeleteAdminEmailConfigurationForbidden{}
}

/*DeleteAdminEmailConfigurationForbidden handles this case with default header values.

  Forbidden
*/
type DeleteAdminEmailConfigurationForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *DeleteAdminEmailConfigurationForbidden) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] deleteAdminEmailConfigurationForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteAdminEmailConfigurationForbidden) ToJSONString() string {
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

func (o *DeleteAdminEmailConfigurationForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAdminEmailConfigurationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteAdminEmailConfigurationNotFound creates a DeleteAdminEmailConfigurationNotFound with default headers values
func NewDeleteAdminEmailConfigurationNotFound() *DeleteAdminEmailConfigurationNotFound {
	return &DeleteAdminEmailConfigurationNotFound{}
}

/*DeleteAdminEmailConfigurationNotFound handles this case with default header values.

  Not Found
*/
type DeleteAdminEmailConfigurationNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *DeleteAdminEmailConfigurationNotFound) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] deleteAdminEmailConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteAdminEmailConfigurationNotFound) ToJSONString() string {
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

func (o *DeleteAdminEmailConfigurationNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAdminEmailConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteAdminEmailConfigurationInternalServerError creates a DeleteAdminEmailConfigurationInternalServerError with default headers values
func NewDeleteAdminEmailConfigurationInternalServerError() *DeleteAdminEmailConfigurationInternalServerError {
	return &DeleteAdminEmailConfigurationInternalServerError{}
}

/*DeleteAdminEmailConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteAdminEmailConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *DeleteAdminEmailConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] deleteAdminEmailConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteAdminEmailConfigurationInternalServerError) ToJSONString() string {
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

func (o *DeleteAdminEmailConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteAdminEmailConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
