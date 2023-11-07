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

// AdminUpdateUserContentV2Reader is a Reader for the AdminUpdateUserContentV2 structure.
type AdminUpdateUserContentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateUserContentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateUserContentV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateUserContentV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateUserContentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateUserContentV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateUserContentV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateUserContentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateUserContentV2OK creates a AdminUpdateUserContentV2OK with default headers values
func NewAdminUpdateUserContentV2OK() *AdminUpdateUserContentV2OK {
	return &AdminUpdateUserContentV2OK{}
}

/*AdminUpdateUserContentV2OK handles this case with default header values.

  OK
*/
type AdminUpdateUserContentV2OK struct {
	Payload *ugcclientmodels.ModelsUpdateContentResponseV2
}

func (o *AdminUpdateUserContentV2OK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] adminUpdateUserContentV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateUserContentV2OK) ToJSONString() string {
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

func (o *AdminUpdateUserContentV2OK) GetPayload() *ugcclientmodels.ModelsUpdateContentResponseV2 {
	return o.Payload
}

func (o *AdminUpdateUserContentV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsUpdateContentResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateUserContentV2BadRequest creates a AdminUpdateUserContentV2BadRequest with default headers values
func NewAdminUpdateUserContentV2BadRequest() *AdminUpdateUserContentV2BadRequest {
	return &AdminUpdateUserContentV2BadRequest{}
}

/*AdminUpdateUserContentV2BadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateUserContentV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] adminUpdateUserContentV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateUserContentV2BadRequest) ToJSONString() string {
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

func (o *AdminUpdateUserContentV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserContentV2Unauthorized creates a AdminUpdateUserContentV2Unauthorized with default headers values
func NewAdminUpdateUserContentV2Unauthorized() *AdminUpdateUserContentV2Unauthorized {
	return &AdminUpdateUserContentV2Unauthorized{}
}

/*AdminUpdateUserContentV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateUserContentV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] adminUpdateUserContentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateUserContentV2Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateUserContentV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserContentV2NotFound creates a AdminUpdateUserContentV2NotFound with default headers values
func NewAdminUpdateUserContentV2NotFound() *AdminUpdateUserContentV2NotFound {
	return &AdminUpdateUserContentV2NotFound{}
}

/*AdminUpdateUserContentV2NotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateUserContentV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] adminUpdateUserContentV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateUserContentV2NotFound) ToJSONString() string {
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

func (o *AdminUpdateUserContentV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserContentV2Conflict creates a AdminUpdateUserContentV2Conflict with default headers values
func NewAdminUpdateUserContentV2Conflict() *AdminUpdateUserContentV2Conflict {
	return &AdminUpdateUserContentV2Conflict{}
}

/*AdminUpdateUserContentV2Conflict handles this case with default header values.

  Conflict
*/
type AdminUpdateUserContentV2Conflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentV2Conflict) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] adminUpdateUserContentV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateUserContentV2Conflict) ToJSONString() string {
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

func (o *AdminUpdateUserContentV2Conflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateUserContentV2InternalServerError creates a AdminUpdateUserContentV2InternalServerError with default headers values
func NewAdminUpdateUserContentV2InternalServerError() *AdminUpdateUserContentV2InternalServerError {
	return &AdminUpdateUserContentV2InternalServerError{}
}

/*AdminUpdateUserContentV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateUserContentV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] adminUpdateUserContentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateUserContentV2InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateUserContentV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
