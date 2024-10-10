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

// AdminUpdateUserContentFileLocationReader is a Reader for the AdminUpdateUserContentFileLocation structure.
type AdminUpdateUserContentFileLocationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateUserContentFileLocationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateUserContentFileLocationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateUserContentFileLocationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateUserContentFileLocationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateUserContentFileLocationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateUserContentFileLocationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateUserContentFileLocationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateUserContentFileLocationOK creates a AdminUpdateUserContentFileLocationOK with default headers values
func NewAdminUpdateUserContentFileLocationOK() *AdminUpdateUserContentFileLocationOK {
	return &AdminUpdateUserContentFileLocationOK{}
}

/*AdminUpdateUserContentFileLocationOK handles this case with default header values.

  Update user content file location
*/
type AdminUpdateUserContentFileLocationOK struct {
	Payload *ugcclientmodels.ModelsUpdateContentResponseV2
}

func (o *AdminUpdateUserContentFileLocationOK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateUserContentFileLocationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateUserContentFileLocationOK) ToJSONString() string {
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

func (o *AdminUpdateUserContentFileLocationOK) GetPayload() *ugcclientmodels.ModelsUpdateContentResponseV2 {
	return o.Payload
}

func (o *AdminUpdateUserContentFileLocationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserContentFileLocationBadRequest creates a AdminUpdateUserContentFileLocationBadRequest with default headers values
func NewAdminUpdateUserContentFileLocationBadRequest() *AdminUpdateUserContentFileLocationBadRequest {
	return &AdminUpdateUserContentFileLocationBadRequest{}
}

/*AdminUpdateUserContentFileLocationBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774001</td><td>unable to read response body/unable to update file location</td></tr></table>
*/
type AdminUpdateUserContentFileLocationBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentFileLocationBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateUserContentFileLocationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateUserContentFileLocationBadRequest) ToJSONString() string {
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

func (o *AdminUpdateUserContentFileLocationBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentFileLocationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserContentFileLocationUnauthorized creates a AdminUpdateUserContentFileLocationUnauthorized with default headers values
func NewAdminUpdateUserContentFileLocationUnauthorized() *AdminUpdateUserContentFileLocationUnauthorized {
	return &AdminUpdateUserContentFileLocationUnauthorized{}
}

/*AdminUpdateUserContentFileLocationUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateUserContentFileLocationUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentFileLocationUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateUserContentFileLocationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateUserContentFileLocationUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateUserContentFileLocationUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentFileLocationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserContentFileLocationForbidden creates a AdminUpdateUserContentFileLocationForbidden with default headers values
func NewAdminUpdateUserContentFileLocationForbidden() *AdminUpdateUserContentFileLocationForbidden {
	return &AdminUpdateUserContentFileLocationForbidden{}
}

/*AdminUpdateUserContentFileLocationForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminUpdateUserContentFileLocationForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentFileLocationForbidden) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateUserContentFileLocationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateUserContentFileLocationForbidden) ToJSONString() string {
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

func (o *AdminUpdateUserContentFileLocationForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentFileLocationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserContentFileLocationNotFound creates a AdminUpdateUserContentFileLocationNotFound with default headers values
func NewAdminUpdateUserContentFileLocationNotFound() *AdminUpdateUserContentFileLocationNotFound {
	return &AdminUpdateUserContentFileLocationNotFound{}
}

/*AdminUpdateUserContentFileLocationNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774002</td><td>unable to update content file location: content not found</td></tr></table>
*/
type AdminUpdateUserContentFileLocationNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentFileLocationNotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateUserContentFileLocationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateUserContentFileLocationNotFound) ToJSONString() string {
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

func (o *AdminUpdateUserContentFileLocationNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentFileLocationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateUserContentFileLocationInternalServerError creates a AdminUpdateUserContentFileLocationInternalServerError with default headers values
func NewAdminUpdateUserContentFileLocationInternalServerError() *AdminUpdateUserContentFileLocationInternalServerError {
	return &AdminUpdateUserContentFileLocationInternalServerError{}
}

/*AdminUpdateUserContentFileLocationInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774003</td><td>unable to update content file location</td></tr></table>
*/
type AdminUpdateUserContentFileLocationInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateUserContentFileLocationInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateUserContentFileLocationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateUserContentFileLocationInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateUserContentFileLocationInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateUserContentFileLocationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
