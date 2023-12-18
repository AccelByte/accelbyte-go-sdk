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

// AdminUpdateContentHideStatusV2Reader is a Reader for the AdminUpdateContentHideStatusV2 structure.
type AdminUpdateContentHideStatusV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateContentHideStatusV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateContentHideStatusV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateContentHideStatusV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateContentHideStatusV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateContentHideStatusV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateContentHideStatusV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateContentHideStatusV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateContentHideStatusV2OK creates a AdminUpdateContentHideStatusV2OK with default headers values
func NewAdminUpdateContentHideStatusV2OK() *AdminUpdateContentHideStatusV2OK {
	return &AdminUpdateContentHideStatusV2OK{}
}

/*AdminUpdateContentHideStatusV2OK handles this case with default header values.

  Hide/UnHide user's generated content
*/
type AdminUpdateContentHideStatusV2OK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponseV2
}

func (o *AdminUpdateContentHideStatusV2OK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide][%d] adminUpdateContentHideStatusV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateContentHideStatusV2OK) ToJSONString() string {
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

func (o *AdminUpdateContentHideStatusV2OK) GetPayload() *ugcclientmodels.ModelsCreateContentResponseV2 {
	return o.Payload
}

func (o *AdminUpdateContentHideStatusV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateContentHideStatusV2BadRequest creates a AdminUpdateContentHideStatusV2BadRequest with default headers values
func NewAdminUpdateContentHideStatusV2BadRequest() *AdminUpdateContentHideStatusV2BadRequest {
	return &AdminUpdateContentHideStatusV2BadRequest{}
}

/*AdminUpdateContentHideStatusV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773801</td><td>Invalid request body/Malformed request</td></tr></table>
*/
type AdminUpdateContentHideStatusV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentHideStatusV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide][%d] adminUpdateContentHideStatusV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateContentHideStatusV2BadRequest) ToJSONString() string {
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

func (o *AdminUpdateContentHideStatusV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentHideStatusV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateContentHideStatusV2Unauthorized creates a AdminUpdateContentHideStatusV2Unauthorized with default headers values
func NewAdminUpdateContentHideStatusV2Unauthorized() *AdminUpdateContentHideStatusV2Unauthorized {
	return &AdminUpdateContentHideStatusV2Unauthorized{}
}

/*AdminUpdateContentHideStatusV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateContentHideStatusV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentHideStatusV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide][%d] adminUpdateContentHideStatusV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateContentHideStatusV2Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateContentHideStatusV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentHideStatusV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateContentHideStatusV2Forbidden creates a AdminUpdateContentHideStatusV2Forbidden with default headers values
func NewAdminUpdateContentHideStatusV2Forbidden() *AdminUpdateContentHideStatusV2Forbidden {
	return &AdminUpdateContentHideStatusV2Forbidden{}
}

/*AdminUpdateContentHideStatusV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminUpdateContentHideStatusV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentHideStatusV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide][%d] adminUpdateContentHideStatusV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateContentHideStatusV2Forbidden) ToJSONString() string {
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

func (o *AdminUpdateContentHideStatusV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentHideStatusV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateContentHideStatusV2NotFound creates a AdminUpdateContentHideStatusV2NotFound with default headers values
func NewAdminUpdateContentHideStatusV2NotFound() *AdminUpdateContentHideStatusV2NotFound {
	return &AdminUpdateContentHideStatusV2NotFound{}
}

/*AdminUpdateContentHideStatusV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773803</td><td>Unable to update hide status: content not found</td></tr></table>
*/
type AdminUpdateContentHideStatusV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentHideStatusV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide][%d] adminUpdateContentHideStatusV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateContentHideStatusV2NotFound) ToJSONString() string {
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

func (o *AdminUpdateContentHideStatusV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentHideStatusV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateContentHideStatusV2InternalServerError creates a AdminUpdateContentHideStatusV2InternalServerError with default headers values
func NewAdminUpdateContentHideStatusV2InternalServerError() *AdminUpdateContentHideStatusV2InternalServerError {
	return &AdminUpdateContentHideStatusV2InternalServerError{}
}

/*AdminUpdateContentHideStatusV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773802</td><td>Unable to update hide status: database error</td></tr><tr><td>773804</td><td>Unable to save ugc content: failed generate upload URL</td></tr></table>
*/
type AdminUpdateContentHideStatusV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateContentHideStatusV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide][%d] adminUpdateContentHideStatusV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateContentHideStatusV2InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateContentHideStatusV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateContentHideStatusV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
