// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminUpdateContentS3ByShareCodeReader is a Reader for the AdminUpdateContentS3ByShareCode structure.
type AdminUpdateContentS3ByShareCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateContentS3ByShareCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateContentS3ByShareCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateContentS3ByShareCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateContentS3ByShareCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateContentS3ByShareCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateContentS3ByShareCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateContentS3ByShareCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateContentS3ByShareCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateContentS3ByShareCodeOK creates a AdminUpdateContentS3ByShareCodeOK with default headers values
func NewAdminUpdateContentS3ByShareCodeOK() *AdminUpdateContentS3ByShareCodeOK {
	return &AdminUpdateContentS3ByShareCodeOK{}
}

/*AdminUpdateContentS3ByShareCodeOK handles this case with default header values.

  Content updated at s3
*/
type AdminUpdateContentS3ByShareCodeOK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *AdminUpdateContentS3ByShareCodeOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentS3ByShareCodeOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateContentS3ByShareCodeOK) ToJSONString() string {
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

func (o *AdminUpdateContentS3ByShareCodeOK) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *AdminUpdateContentS3ByShareCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateContentS3ByShareCodeBadRequest creates a AdminUpdateContentS3ByShareCodeBadRequest with default headers values
func NewAdminUpdateContentS3ByShareCodeBadRequest() *AdminUpdateContentS3ByShareCodeBadRequest {
	return &AdminUpdateContentS3ByShareCodeBadRequest{}
}

/*AdminUpdateContentS3ByShareCodeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr><tr><td>770107</td><td>Unable to update ugc content: invalid shareCode format</td></tr></table>
*/
type AdminUpdateContentS3ByShareCodeBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentS3ByShareCodeBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentS3ByShareCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateContentS3ByShareCodeBadRequest) ToJSONString() string {
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

func (o *AdminUpdateContentS3ByShareCodeBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentS3ByShareCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateContentS3ByShareCodeUnauthorized creates a AdminUpdateContentS3ByShareCodeUnauthorized with default headers values
func NewAdminUpdateContentS3ByShareCodeUnauthorized() *AdminUpdateContentS3ByShareCodeUnauthorized {
	return &AdminUpdateContentS3ByShareCodeUnauthorized{}
}

/*AdminUpdateContentS3ByShareCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateContentS3ByShareCodeUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentS3ByShareCodeUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentS3ByShareCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateContentS3ByShareCodeUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateContentS3ByShareCodeUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentS3ByShareCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateContentS3ByShareCodeForbidden creates a AdminUpdateContentS3ByShareCodeForbidden with default headers values
func NewAdminUpdateContentS3ByShareCodeForbidden() *AdminUpdateContentS3ByShareCodeForbidden {
	return &AdminUpdateContentS3ByShareCodeForbidden{}
}

/*AdminUpdateContentS3ByShareCodeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type AdminUpdateContentS3ByShareCodeForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentS3ByShareCodeForbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentS3ByShareCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateContentS3ByShareCodeForbidden) ToJSONString() string {
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

func (o *AdminUpdateContentS3ByShareCodeForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentS3ByShareCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateContentS3ByShareCodeNotFound creates a AdminUpdateContentS3ByShareCodeNotFound with default headers values
func NewAdminUpdateContentS3ByShareCodeNotFound() *AdminUpdateContentS3ByShareCodeNotFound {
	return &AdminUpdateContentS3ByShareCodeNotFound{}
}

/*AdminUpdateContentS3ByShareCodeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type AdminUpdateContentS3ByShareCodeNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentS3ByShareCodeNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentS3ByShareCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateContentS3ByShareCodeNotFound) ToJSONString() string {
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

func (o *AdminUpdateContentS3ByShareCodeNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentS3ByShareCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateContentS3ByShareCodeConflict creates a AdminUpdateContentS3ByShareCodeConflict with default headers values
func NewAdminUpdateContentS3ByShareCodeConflict() *AdminUpdateContentS3ByShareCodeConflict {
	return &AdminUpdateContentS3ByShareCodeConflict{}
}

/*AdminUpdateContentS3ByShareCodeConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772606</td><td>Share code already used</td></tr></table>
*/
type AdminUpdateContentS3ByShareCodeConflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentS3ByShareCodeConflict) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentS3ByShareCodeConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateContentS3ByShareCodeConflict) ToJSONString() string {
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

func (o *AdminUpdateContentS3ByShareCodeConflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentS3ByShareCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateContentS3ByShareCodeInternalServerError creates a AdminUpdateContentS3ByShareCodeInternalServerError with default headers values
func NewAdminUpdateContentS3ByShareCodeInternalServerError() *AdminUpdateContentS3ByShareCodeInternalServerError {
	return &AdminUpdateContentS3ByShareCodeInternalServerError{}
}

/*AdminUpdateContentS3ByShareCodeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr><tr><td>772605</td><td>Unable to save ugc content: failed generate upload URL</td></tr></table>
*/
type AdminUpdateContentS3ByShareCodeInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentS3ByShareCodeInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentS3ByShareCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateContentS3ByShareCodeInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateContentS3ByShareCodeInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentS3ByShareCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
