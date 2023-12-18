// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// AdminGenerateUserContentUploadURLV2Reader is a Reader for the AdminGenerateUserContentUploadURLV2 structure.
type AdminGenerateUserContentUploadURLV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGenerateUserContentUploadURLV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGenerateUserContentUploadURLV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGenerateUserContentUploadURLV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGenerateUserContentUploadURLV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGenerateUserContentUploadURLV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGenerateUserContentUploadURLV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGenerateUserContentUploadURLV2OK creates a AdminGenerateUserContentUploadURLV2OK with default headers values
func NewAdminGenerateUserContentUploadURLV2OK() *AdminGenerateUserContentUploadURLV2OK {
	return &AdminGenerateUserContentUploadURLV2OK{}
}

/*AdminGenerateUserContentUploadURLV2OK handles this case with default header values.

  User content upload URL generated
*/
type AdminGenerateUserContentUploadURLV2OK struct {
	Payload *ugcclientmodels.ModelsGenerateContentUploadURLResponse
}

func (o *AdminGenerateUserContentUploadURLV2OK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateUserContentUploadUrlV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGenerateUserContentUploadURLV2OK) ToJSONString() string {
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

func (o *AdminGenerateUserContentUploadURLV2OK) GetPayload() *ugcclientmodels.ModelsGenerateContentUploadURLResponse {
	return o.Payload
}

func (o *AdminGenerateUserContentUploadURLV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsGenerateContentUploadURLResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGenerateUserContentUploadURLV2BadRequest creates a AdminGenerateUserContentUploadURLV2BadRequest with default headers values
func NewAdminGenerateUserContentUploadURLV2BadRequest() *AdminGenerateUserContentUploadURLV2BadRequest {
	return &AdminGenerateUserContentUploadURLV2BadRequest{}
}

/*AdminGenerateUserContentUploadURLV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type AdminGenerateUserContentUploadURLV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGenerateUserContentUploadURLV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateUserContentUploadUrlV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGenerateUserContentUploadURLV2BadRequest) ToJSONString() string {
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

func (o *AdminGenerateUserContentUploadURLV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGenerateUserContentUploadURLV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateUserContentUploadURLV2Unauthorized creates a AdminGenerateUserContentUploadURLV2Unauthorized with default headers values
func NewAdminGenerateUserContentUploadURLV2Unauthorized() *AdminGenerateUserContentUploadURLV2Unauthorized {
	return &AdminGenerateUserContentUploadURLV2Unauthorized{}
}

/*AdminGenerateUserContentUploadURLV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGenerateUserContentUploadURLV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGenerateUserContentUploadURLV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateUserContentUploadUrlV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGenerateUserContentUploadURLV2Unauthorized) ToJSONString() string {
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

func (o *AdminGenerateUserContentUploadURLV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGenerateUserContentUploadURLV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateUserContentUploadURLV2NotFound creates a AdminGenerateUserContentUploadURLV2NotFound with default headers values
func NewAdminGenerateUserContentUploadURLV2NotFound() *AdminGenerateUserContentUploadURLV2NotFound {
	return &AdminGenerateUserContentUploadURLV2NotFound{}
}

/*AdminGenerateUserContentUploadURLV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type AdminGenerateUserContentUploadURLV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGenerateUserContentUploadURLV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateUserContentUploadUrlV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGenerateUserContentUploadURLV2NotFound) ToJSONString() string {
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

func (o *AdminGenerateUserContentUploadURLV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGenerateUserContentUploadURLV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateUserContentUploadURLV2InternalServerError creates a AdminGenerateUserContentUploadURLV2InternalServerError with default headers values
func NewAdminGenerateUserContentUploadURLV2InternalServerError() *AdminGenerateUserContentUploadURLV2InternalServerError {
	return &AdminGenerateUserContentUploadURLV2InternalServerError{}
}

/*AdminGenerateUserContentUploadURLV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr><tr><td>772605</td><td>Unable to save ugc content: failed generate upload URL</td></tr></table>
*/
type AdminGenerateUserContentUploadURLV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGenerateUserContentUploadURLV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateUserContentUploadUrlV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGenerateUserContentUploadURLV2InternalServerError) ToJSONString() string {
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

func (o *AdminGenerateUserContentUploadURLV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGenerateUserContentUploadURLV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
