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

// AdminUpdateContentByShareCodeV2Reader is a Reader for the AdminUpdateContentByShareCodeV2 structure.
type AdminUpdateContentByShareCodeV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateContentByShareCodeV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateContentByShareCodeV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateContentByShareCodeV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateContentByShareCodeV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateContentByShareCodeV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateContentByShareCodeV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateContentByShareCodeV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateContentByShareCodeV2OK creates a AdminUpdateContentByShareCodeV2OK with default headers values
func NewAdminUpdateContentByShareCodeV2OK() *AdminUpdateContentByShareCodeV2OK {
	return &AdminUpdateContentByShareCodeV2OK{}
}

/*AdminUpdateContentByShareCodeV2OK handles this case with default header values.

  OK
*/
type AdminUpdateContentByShareCodeV2OK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponseV2
}

func (o *AdminUpdateContentByShareCodeV2OK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentByShareCodeV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateContentByShareCodeV2OK) ToJSONString() string {
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

func (o *AdminUpdateContentByShareCodeV2OK) GetPayload() *ugcclientmodels.ModelsCreateContentResponseV2 {
	return o.Payload
}

func (o *AdminUpdateContentByShareCodeV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateContentByShareCodeV2BadRequest creates a AdminUpdateContentByShareCodeV2BadRequest with default headers values
func NewAdminUpdateContentByShareCodeV2BadRequest() *AdminUpdateContentByShareCodeV2BadRequest {
	return &AdminUpdateContentByShareCodeV2BadRequest{}
}

/*AdminUpdateContentByShareCodeV2BadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateContentByShareCodeV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentByShareCodeV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentByShareCodeV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateContentByShareCodeV2BadRequest) ToJSONString() string {
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

func (o *AdminUpdateContentByShareCodeV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentByShareCodeV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateContentByShareCodeV2Unauthorized creates a AdminUpdateContentByShareCodeV2Unauthorized with default headers values
func NewAdminUpdateContentByShareCodeV2Unauthorized() *AdminUpdateContentByShareCodeV2Unauthorized {
	return &AdminUpdateContentByShareCodeV2Unauthorized{}
}

/*AdminUpdateContentByShareCodeV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateContentByShareCodeV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentByShareCodeV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentByShareCodeV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateContentByShareCodeV2Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateContentByShareCodeV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentByShareCodeV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateContentByShareCodeV2NotFound creates a AdminUpdateContentByShareCodeV2NotFound with default headers values
func NewAdminUpdateContentByShareCodeV2NotFound() *AdminUpdateContentByShareCodeV2NotFound {
	return &AdminUpdateContentByShareCodeV2NotFound{}
}

/*AdminUpdateContentByShareCodeV2NotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateContentByShareCodeV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentByShareCodeV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentByShareCodeV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateContentByShareCodeV2NotFound) ToJSONString() string {
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

func (o *AdminUpdateContentByShareCodeV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentByShareCodeV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateContentByShareCodeV2Conflict creates a AdminUpdateContentByShareCodeV2Conflict with default headers values
func NewAdminUpdateContentByShareCodeV2Conflict() *AdminUpdateContentByShareCodeV2Conflict {
	return &AdminUpdateContentByShareCodeV2Conflict{}
}

/*AdminUpdateContentByShareCodeV2Conflict handles this case with default header values.

  Conflict
*/
type AdminUpdateContentByShareCodeV2Conflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentByShareCodeV2Conflict) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentByShareCodeV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateContentByShareCodeV2Conflict) ToJSONString() string {
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

func (o *AdminUpdateContentByShareCodeV2Conflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentByShareCodeV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateContentByShareCodeV2InternalServerError creates a AdminUpdateContentByShareCodeV2InternalServerError with default headers values
func NewAdminUpdateContentByShareCodeV2InternalServerError() *AdminUpdateContentByShareCodeV2InternalServerError {
	return &AdminUpdateContentByShareCodeV2InternalServerError{}
}

/*AdminUpdateContentByShareCodeV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateContentByShareCodeV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentByShareCodeV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] adminUpdateContentByShareCodeV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateContentByShareCodeV2InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateContentByShareCodeV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentByShareCodeV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
