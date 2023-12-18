// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// PublicUpdateContentFileLocationReader is a Reader for the PublicUpdateContentFileLocation structure.
type PublicUpdateContentFileLocationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateContentFileLocationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateContentFileLocationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateContentFileLocationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateContentFileLocationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateContentFileLocationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateContentFileLocationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateContentFileLocationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateContentFileLocationOK creates a PublicUpdateContentFileLocationOK with default headers values
func NewPublicUpdateContentFileLocationOK() *PublicUpdateContentFileLocationOK {
	return &PublicUpdateContentFileLocationOK{}
}

/*PublicUpdateContentFileLocationOK handles this case with default header values.

  Update content file location
*/
type PublicUpdateContentFileLocationOK struct {
	Payload *ugcclientmodels.ModelsUpdateContentResponseV2
}

func (o *PublicUpdateContentFileLocationOK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] publicUpdateContentFileLocationOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateContentFileLocationOK) ToJSONString() string {
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

func (o *PublicUpdateContentFileLocationOK) GetPayload() *ugcclientmodels.ModelsUpdateContentResponseV2 {
	return o.Payload
}

func (o *PublicUpdateContentFileLocationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentFileLocationBadRequest creates a PublicUpdateContentFileLocationBadRequest with default headers values
func NewPublicUpdateContentFileLocationBadRequest() *PublicUpdateContentFileLocationBadRequest {
	return &PublicUpdateContentFileLocationBadRequest{}
}

/*PublicUpdateContentFileLocationBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774001</td><td>unable to read response body/unable to update file location</td></tr></table>
*/
type PublicUpdateContentFileLocationBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentFileLocationBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] publicUpdateContentFileLocationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateContentFileLocationBadRequest) ToJSONString() string {
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

func (o *PublicUpdateContentFileLocationBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentFileLocationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentFileLocationUnauthorized creates a PublicUpdateContentFileLocationUnauthorized with default headers values
func NewPublicUpdateContentFileLocationUnauthorized() *PublicUpdateContentFileLocationUnauthorized {
	return &PublicUpdateContentFileLocationUnauthorized{}
}

/*PublicUpdateContentFileLocationUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicUpdateContentFileLocationUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentFileLocationUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] publicUpdateContentFileLocationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateContentFileLocationUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateContentFileLocationUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentFileLocationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentFileLocationForbidden creates a PublicUpdateContentFileLocationForbidden with default headers values
func NewPublicUpdateContentFileLocationForbidden() *PublicUpdateContentFileLocationForbidden {
	return &PublicUpdateContentFileLocationForbidden{}
}

/*PublicUpdateContentFileLocationForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicUpdateContentFileLocationForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentFileLocationForbidden) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] publicUpdateContentFileLocationForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateContentFileLocationForbidden) ToJSONString() string {
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

func (o *PublicUpdateContentFileLocationForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentFileLocationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentFileLocationNotFound creates a PublicUpdateContentFileLocationNotFound with default headers values
func NewPublicUpdateContentFileLocationNotFound() *PublicUpdateContentFileLocationNotFound {
	return &PublicUpdateContentFileLocationNotFound{}
}

/*PublicUpdateContentFileLocationNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774002</td><td>unable to update content file location: content not found</td></tr></table>
*/
type PublicUpdateContentFileLocationNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentFileLocationNotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] publicUpdateContentFileLocationNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateContentFileLocationNotFound) ToJSONString() string {
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

func (o *PublicUpdateContentFileLocationNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentFileLocationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentFileLocationInternalServerError creates a PublicUpdateContentFileLocationInternalServerError with default headers values
func NewPublicUpdateContentFileLocationInternalServerError() *PublicUpdateContentFileLocationInternalServerError {
	return &PublicUpdateContentFileLocationInternalServerError{}
}

/*PublicUpdateContentFileLocationInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr><tr><td>774003</td><td>unable to update content file location</td></tr></table>
*/
type PublicUpdateContentFileLocationInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentFileLocationInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/fileLocation][%d] publicUpdateContentFileLocationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateContentFileLocationInternalServerError) ToJSONString() string {
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

func (o *PublicUpdateContentFileLocationInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentFileLocationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
