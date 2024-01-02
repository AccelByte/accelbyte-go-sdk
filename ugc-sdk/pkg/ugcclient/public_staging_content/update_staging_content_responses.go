// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_staging_content

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

// UpdateStagingContentReader is a Reader for the UpdateStagingContent structure.
type UpdateStagingContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateStagingContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateStagingContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateStagingContentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateStagingContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateStagingContentForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateStagingContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateStagingContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateStagingContentOK creates a UpdateStagingContentOK with default headers values
func NewUpdateStagingContentOK() *UpdateStagingContentOK {
	return &UpdateStagingContentOK{}
}

/*UpdateStagingContentOK handles this case with default header values.

  staging content updated
*/
type UpdateStagingContentOK struct {
	Payload *ugcclientmodels.ModelsStagingContentResponse
}

func (o *UpdateStagingContentOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] updateStagingContentOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateStagingContentOK) ToJSONString() string {
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

func (o *UpdateStagingContentOK) GetPayload() *ugcclientmodels.ModelsStagingContentResponse {
	return o.Payload
}

func (o *UpdateStagingContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsStagingContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateStagingContentBadRequest creates a UpdateStagingContentBadRequest with default headers values
func NewUpdateStagingContentBadRequest() *UpdateStagingContentBadRequest {
	return &UpdateStagingContentBadRequest{}
}

/*UpdateStagingContentBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774411</td><td>Invalid request body</td></tr></table>
*/
type UpdateStagingContentBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateStagingContentBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] updateStagingContentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateStagingContentBadRequest) ToJSONString() string {
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

func (o *UpdateStagingContentBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateStagingContentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateStagingContentUnauthorized creates a UpdateStagingContentUnauthorized with default headers values
func NewUpdateStagingContentUnauthorized() *UpdateStagingContentUnauthorized {
	return &UpdateStagingContentUnauthorized{}
}

/*UpdateStagingContentUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateStagingContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateStagingContentUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] updateStagingContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateStagingContentUnauthorized) ToJSONString() string {
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

func (o *UpdateStagingContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateStagingContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateStagingContentForbidden creates a UpdateStagingContentForbidden with default headers values
func NewUpdateStagingContentForbidden() *UpdateStagingContentForbidden {
	return &UpdateStagingContentForbidden{}
}

/*UpdateStagingContentForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774412</td><td>user has been banned to update content</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateStagingContentForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateStagingContentForbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] updateStagingContentForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateStagingContentForbidden) ToJSONString() string {
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

func (o *UpdateStagingContentForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateStagingContentForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateStagingContentNotFound creates a UpdateStagingContentNotFound with default headers values
func NewUpdateStagingContentNotFound() *UpdateStagingContentNotFound {
	return &UpdateStagingContentNotFound{}
}

/*UpdateStagingContentNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774413</td><td>staging content not found</td></tr></table>
*/
type UpdateStagingContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateStagingContentNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] updateStagingContentNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateStagingContentNotFound) ToJSONString() string {
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

func (o *UpdateStagingContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateStagingContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateStagingContentInternalServerError creates a UpdateStagingContentInternalServerError with default headers values
func NewUpdateStagingContentInternalServerError() *UpdateStagingContentInternalServerError {
	return &UpdateStagingContentInternalServerError{}
}

/*UpdateStagingContentInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774414</td><td>unable to update staging content</td></tr><tr><td>774415</td><td>unable to generate presigned URL</td></tr></table>
*/
type UpdateStagingContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateStagingContentInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] updateStagingContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateStagingContentInternalServerError) ToJSONString() string {
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

func (o *UpdateStagingContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateStagingContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
