// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_staging_content

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

// AdminApproveStagingContentReader is a Reader for the AdminApproveStagingContent structure.
type AdminApproveStagingContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminApproveStagingContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminApproveStagingContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminApproveStagingContentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminApproveStagingContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminApproveStagingContentForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminApproveStagingContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminApproveStagingContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminApproveStagingContentOK creates a AdminApproveStagingContentOK with default headers values
func NewAdminApproveStagingContentOK() *AdminApproveStagingContentOK {
	return &AdminApproveStagingContentOK{}
}

/*AdminApproveStagingContentOK handles this case with default header values.

  content approval created
*/
type AdminApproveStagingContentOK struct {
	Payload *ugcclientmodels.ModelsStagingContentResponse
}

func (o *AdminApproveStagingContentOK) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve][%d] adminApproveStagingContentOK  %+v", 200, o.ToJSONString())
}

func (o *AdminApproveStagingContentOK) ToJSONString() string {
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

func (o *AdminApproveStagingContentOK) GetPayload() *ugcclientmodels.ModelsStagingContentResponse {
	return o.Payload
}

func (o *AdminApproveStagingContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminApproveStagingContentBadRequest creates a AdminApproveStagingContentBadRequest with default headers values
func NewAdminApproveStagingContentBadRequest() *AdminApproveStagingContentBadRequest {
	return &AdminApproveStagingContentBadRequest{}
}

/*AdminApproveStagingContentBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774405</td><td>Invalid request body</td></tr></table>
*/
type AdminApproveStagingContentBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminApproveStagingContentBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve][%d] adminApproveStagingContentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminApproveStagingContentBadRequest) ToJSONString() string {
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

func (o *AdminApproveStagingContentBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminApproveStagingContentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminApproveStagingContentUnauthorized creates a AdminApproveStagingContentUnauthorized with default headers values
func NewAdminApproveStagingContentUnauthorized() *AdminApproveStagingContentUnauthorized {
	return &AdminApproveStagingContentUnauthorized{}
}

/*AdminApproveStagingContentUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminApproveStagingContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminApproveStagingContentUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve][%d] adminApproveStagingContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminApproveStagingContentUnauthorized) ToJSONString() string {
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

func (o *AdminApproveStagingContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminApproveStagingContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminApproveStagingContentForbidden creates a AdminApproveStagingContentForbidden with default headers values
func NewAdminApproveStagingContentForbidden() *AdminApproveStagingContentForbidden {
	return &AdminApproveStagingContentForbidden{}
}

/*AdminApproveStagingContentForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminApproveStagingContentForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminApproveStagingContentForbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve][%d] adminApproveStagingContentForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminApproveStagingContentForbidden) ToJSONString() string {
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

func (o *AdminApproveStagingContentForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminApproveStagingContentForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminApproveStagingContentNotFound creates a AdminApproveStagingContentNotFound with default headers values
func NewAdminApproveStagingContentNotFound() *AdminApproveStagingContentNotFound {
	return &AdminApproveStagingContentNotFound{}
}

/*AdminApproveStagingContentNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774406</td><td>staging content not found</td></tr></table>
*/
type AdminApproveStagingContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminApproveStagingContentNotFound) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve][%d] adminApproveStagingContentNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminApproveStagingContentNotFound) ToJSONString() string {
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

func (o *AdminApproveStagingContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminApproveStagingContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminApproveStagingContentInternalServerError creates a AdminApproveStagingContentInternalServerError with default headers values
func NewAdminApproveStagingContentInternalServerError() *AdminApproveStagingContentInternalServerError {
	return &AdminApproveStagingContentInternalServerError{}
}

/*AdminApproveStagingContentInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774407</td><td>unable to approve staging content</td></tr><tr><td>774408</td><td>nable to save ugc content: shareCode exceed the limit</td></tr></table>
*/
type AdminApproveStagingContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminApproveStagingContentInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve][%d] adminApproveStagingContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminApproveStagingContentInternalServerError) ToJSONString() string {
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

func (o *AdminApproveStagingContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminApproveStagingContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
