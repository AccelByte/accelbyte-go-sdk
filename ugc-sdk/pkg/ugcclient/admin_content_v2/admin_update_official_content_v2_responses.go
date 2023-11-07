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

// AdminUpdateOfficialContentV2Reader is a Reader for the AdminUpdateOfficialContentV2 structure.
type AdminUpdateOfficialContentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateOfficialContentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateOfficialContentV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateOfficialContentV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateOfficialContentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateOfficialContentV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUpdateOfficialContentV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateOfficialContentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateOfficialContentV2OK creates a AdminUpdateOfficialContentV2OK with default headers values
func NewAdminUpdateOfficialContentV2OK() *AdminUpdateOfficialContentV2OK {
	return &AdminUpdateOfficialContentV2OK{}
}

/*AdminUpdateOfficialContentV2OK handles this case with default header values.

  OK
*/
type AdminUpdateOfficialContentV2OK struct {
	Payload *ugcclientmodels.ModelsUpdateContentResponseV2
}

func (o *AdminUpdateOfficialContentV2OK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminUpdateOfficialContentV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentV2OK) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentV2OK) GetPayload() *ugcclientmodels.ModelsUpdateContentResponseV2 {
	return o.Payload
}

func (o *AdminUpdateOfficialContentV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateOfficialContentV2BadRequest creates a AdminUpdateOfficialContentV2BadRequest with default headers values
func NewAdminUpdateOfficialContentV2BadRequest() *AdminUpdateOfficialContentV2BadRequest {
	return &AdminUpdateOfficialContentV2BadRequest{}
}

/*AdminUpdateOfficialContentV2BadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateOfficialContentV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminUpdateOfficialContentV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentV2BadRequest) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateOfficialContentV2Unauthorized creates a AdminUpdateOfficialContentV2Unauthorized with default headers values
func NewAdminUpdateOfficialContentV2Unauthorized() *AdminUpdateOfficialContentV2Unauthorized {
	return &AdminUpdateOfficialContentV2Unauthorized{}
}

/*AdminUpdateOfficialContentV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateOfficialContentV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminUpdateOfficialContentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentV2Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateOfficialContentV2NotFound creates a AdminUpdateOfficialContentV2NotFound with default headers values
func NewAdminUpdateOfficialContentV2NotFound() *AdminUpdateOfficialContentV2NotFound {
	return &AdminUpdateOfficialContentV2NotFound{}
}

/*AdminUpdateOfficialContentV2NotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateOfficialContentV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminUpdateOfficialContentV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentV2NotFound) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateOfficialContentV2Conflict creates a AdminUpdateOfficialContentV2Conflict with default headers values
func NewAdminUpdateOfficialContentV2Conflict() *AdminUpdateOfficialContentV2Conflict {
	return &AdminUpdateOfficialContentV2Conflict{}
}

/*AdminUpdateOfficialContentV2Conflict handles this case with default header values.

  Conflict
*/
type AdminUpdateOfficialContentV2Conflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentV2Conflict) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminUpdateOfficialContentV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentV2Conflict) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentV2Conflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateOfficialContentV2InternalServerError creates a AdminUpdateOfficialContentV2InternalServerError with default headers values
func NewAdminUpdateOfficialContentV2InternalServerError() *AdminUpdateOfficialContentV2InternalServerError {
	return &AdminUpdateOfficialContentV2InternalServerError{}
}

/*AdminUpdateOfficialContentV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateOfficialContentV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminUpdateOfficialContentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentV2InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
