// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminGetUserSinglePlatformAccountReader is a Reader for the AdminGetUserSinglePlatformAccount structure.
type AdminGetUserSinglePlatformAccountReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserSinglePlatformAccountReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserSinglePlatformAccountOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserSinglePlatformAccountBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserSinglePlatformAccountUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserSinglePlatformAccountForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUserSinglePlatformAccountNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserSinglePlatformAccountInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserSinglePlatformAccountOK creates a AdminGetUserSinglePlatformAccountOK with default headers values
func NewAdminGetUserSinglePlatformAccountOK() *AdminGetUserSinglePlatformAccountOK {
	return &AdminGetUserSinglePlatformAccountOK{}
}

/*AdminGetUserSinglePlatformAccountOK handles this case with default header values.

  OK
*/
type AdminGetUserSinglePlatformAccountOK struct {
	Payload *iamclientmodels.ModelUserPlatformMetadata
}

func (o *AdminGetUserSinglePlatformAccountOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata][%d] adminGetUserSinglePlatformAccountOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserSinglePlatformAccountOK) ToJSONString() string {
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

func (o *AdminGetUserSinglePlatformAccountOK) GetPayload() *iamclientmodels.ModelUserPlatformMetadata {
	return o.Payload
}

func (o *AdminGetUserSinglePlatformAccountOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserPlatformMetadata)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserSinglePlatformAccountBadRequest creates a AdminGetUserSinglePlatformAccountBadRequest with default headers values
func NewAdminGetUserSinglePlatformAccountBadRequest() *AdminGetUserSinglePlatformAccountBadRequest {
	return &AdminGetUserSinglePlatformAccountBadRequest{}
}

/*AdminGetUserSinglePlatformAccountBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetUserSinglePlatformAccountBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserSinglePlatformAccountBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata][%d] adminGetUserSinglePlatformAccountBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserSinglePlatformAccountBadRequest) ToJSONString() string {
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

func (o *AdminGetUserSinglePlatformAccountBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserSinglePlatformAccountBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserSinglePlatformAccountUnauthorized creates a AdminGetUserSinglePlatformAccountUnauthorized with default headers values
func NewAdminGetUserSinglePlatformAccountUnauthorized() *AdminGetUserSinglePlatformAccountUnauthorized {
	return &AdminGetUserSinglePlatformAccountUnauthorized{}
}

/*AdminGetUserSinglePlatformAccountUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetUserSinglePlatformAccountUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserSinglePlatformAccountUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata][%d] adminGetUserSinglePlatformAccountUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserSinglePlatformAccountUnauthorized) ToJSONString() string {
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

func (o *AdminGetUserSinglePlatformAccountUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserSinglePlatformAccountUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserSinglePlatformAccountForbidden creates a AdminGetUserSinglePlatformAccountForbidden with default headers values
func NewAdminGetUserSinglePlatformAccountForbidden() *AdminGetUserSinglePlatformAccountForbidden {
	return &AdminGetUserSinglePlatformAccountForbidden{}
}

/*AdminGetUserSinglePlatformAccountForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetUserSinglePlatformAccountForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserSinglePlatformAccountForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata][%d] adminGetUserSinglePlatformAccountForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserSinglePlatformAccountForbidden) ToJSONString() string {
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

func (o *AdminGetUserSinglePlatformAccountForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserSinglePlatformAccountForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserSinglePlatformAccountNotFound creates a AdminGetUserSinglePlatformAccountNotFound with default headers values
func NewAdminGetUserSinglePlatformAccountNotFound() *AdminGetUserSinglePlatformAccountNotFound {
	return &AdminGetUserSinglePlatformAccountNotFound{}
}

/*AdminGetUserSinglePlatformAccountNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>10139</td><td>platform account not found</td></tr></table>
*/
type AdminGetUserSinglePlatformAccountNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserSinglePlatformAccountNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata][%d] adminGetUserSinglePlatformAccountNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUserSinglePlatformAccountNotFound) ToJSONString() string {
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

func (o *AdminGetUserSinglePlatformAccountNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserSinglePlatformAccountNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserSinglePlatformAccountInternalServerError creates a AdminGetUserSinglePlatformAccountInternalServerError with default headers values
func NewAdminGetUserSinglePlatformAccountInternalServerError() *AdminGetUserSinglePlatformAccountInternalServerError {
	return &AdminGetUserSinglePlatformAccountInternalServerError{}
}

/*AdminGetUserSinglePlatformAccountInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminGetUserSinglePlatformAccountInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetUserSinglePlatformAccountInternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata][%d] adminGetUserSinglePlatformAccountInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserSinglePlatformAccountInternalServerError) ToJSONString() string {
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

func (o *AdminGetUserSinglePlatformAccountInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetUserSinglePlatformAccountInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
