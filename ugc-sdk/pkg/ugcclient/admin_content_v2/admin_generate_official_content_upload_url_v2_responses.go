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

// AdminGenerateOfficialContentUploadURLV2Reader is a Reader for the AdminGenerateOfficialContentUploadURLV2 structure.
type AdminGenerateOfficialContentUploadURLV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGenerateOfficialContentUploadURLV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGenerateOfficialContentUploadURLV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGenerateOfficialContentUploadURLV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGenerateOfficialContentUploadURLV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGenerateOfficialContentUploadURLV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGenerateOfficialContentUploadURLV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGenerateOfficialContentUploadURLV2OK creates a AdminGenerateOfficialContentUploadURLV2OK with default headers values
func NewAdminGenerateOfficialContentUploadURLV2OK() *AdminGenerateOfficialContentUploadURLV2OK {
	return &AdminGenerateOfficialContentUploadURLV2OK{}
}

/*AdminGenerateOfficialContentUploadURLV2OK handles this case with default header values.

  official content upload URL generated
*/
type AdminGenerateOfficialContentUploadURLV2OK struct {
	Payload *ugcclientmodels.ModelsGenerateContentUploadURLResponse
}

func (o *AdminGenerateOfficialContentUploadURLV2OK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateOfficialContentUploadUrlV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGenerateOfficialContentUploadURLV2OK) ToJSONString() string {
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

func (o *AdminGenerateOfficialContentUploadURLV2OK) GetPayload() *ugcclientmodels.ModelsGenerateContentUploadURLResponse {
	return o.Payload
}

func (o *AdminGenerateOfficialContentUploadURLV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateOfficialContentUploadURLV2BadRequest creates a AdminGenerateOfficialContentUploadURLV2BadRequest with default headers values
func NewAdminGenerateOfficialContentUploadURLV2BadRequest() *AdminGenerateOfficialContentUploadURLV2BadRequest {
	return &AdminGenerateOfficialContentUploadURLV2BadRequest{}
}

/*AdminGenerateOfficialContentUploadURLV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type AdminGenerateOfficialContentUploadURLV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGenerateOfficialContentUploadURLV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateOfficialContentUploadUrlV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGenerateOfficialContentUploadURLV2BadRequest) ToJSONString() string {
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

func (o *AdminGenerateOfficialContentUploadURLV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGenerateOfficialContentUploadURLV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateOfficialContentUploadURLV2Unauthorized creates a AdminGenerateOfficialContentUploadURLV2Unauthorized with default headers values
func NewAdminGenerateOfficialContentUploadURLV2Unauthorized() *AdminGenerateOfficialContentUploadURLV2Unauthorized {
	return &AdminGenerateOfficialContentUploadURLV2Unauthorized{}
}

/*AdminGenerateOfficialContentUploadURLV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGenerateOfficialContentUploadURLV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGenerateOfficialContentUploadURLV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateOfficialContentUploadUrlV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGenerateOfficialContentUploadURLV2Unauthorized) ToJSONString() string {
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

func (o *AdminGenerateOfficialContentUploadURLV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGenerateOfficialContentUploadURLV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateOfficialContentUploadURLV2NotFound creates a AdminGenerateOfficialContentUploadURLV2NotFound with default headers values
func NewAdminGenerateOfficialContentUploadURLV2NotFound() *AdminGenerateOfficialContentUploadURLV2NotFound {
	return &AdminGenerateOfficialContentUploadURLV2NotFound{}
}

/*AdminGenerateOfficialContentUploadURLV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type AdminGenerateOfficialContentUploadURLV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGenerateOfficialContentUploadURLV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateOfficialContentUploadUrlV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGenerateOfficialContentUploadURLV2NotFound) ToJSONString() string {
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

func (o *AdminGenerateOfficialContentUploadURLV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGenerateOfficialContentUploadURLV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGenerateOfficialContentUploadURLV2InternalServerError creates a AdminGenerateOfficialContentUploadURLV2InternalServerError with default headers values
func NewAdminGenerateOfficialContentUploadURLV2InternalServerError() *AdminGenerateOfficialContentUploadURLV2InternalServerError {
	return &AdminGenerateOfficialContentUploadURLV2InternalServerError{}
}

/*AdminGenerateOfficialContentUploadURLV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr><tr><td>772605</td><td>Unable to save ugc content: failed generate upload URL</td></tr></table>
*/
type AdminGenerateOfficialContentUploadURLV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGenerateOfficialContentUploadURLV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] adminGenerateOfficialContentUploadUrlV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGenerateOfficialContentUploadURLV2InternalServerError) ToJSONString() string {
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

func (o *AdminGenerateOfficialContentUploadURLV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGenerateOfficialContentUploadURLV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
