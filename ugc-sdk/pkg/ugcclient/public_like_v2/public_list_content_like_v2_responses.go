// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_like_v2

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

// PublicListContentLikeV2Reader is a Reader for the PublicListContentLikeV2 structure.
type PublicListContentLikeV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListContentLikeV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListContentLikeV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListContentLikeV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListContentLikeV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListContentLikeV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListContentLikeV2OK creates a PublicListContentLikeV2OK with default headers values
func NewPublicListContentLikeV2OK() *PublicListContentLikeV2OK {
	return &PublicListContentLikeV2OK{}
}

/*PublicListContentLikeV2OK handles this case with default header values.

  Retrieve list of user liked content
*/
type PublicListContentLikeV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentLikersResponse
}

func (o *PublicListContentLikeV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like][%d] publicListContentLikeV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicListContentLikeV2OK) ToJSONString() string {
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

func (o *PublicListContentLikeV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentLikersResponse {
	return o.Payload
}

func (o *PublicListContentLikeV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentLikersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListContentLikeV2BadRequest creates a PublicListContentLikeV2BadRequest with default headers values
func NewPublicListContentLikeV2BadRequest() *PublicListContentLikeV2BadRequest {
	return &PublicListContentLikeV2BadRequest{}
}

/*PublicListContentLikeV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771004</td><td>invalid paging parameter</td></tr></table>
*/
type PublicListContentLikeV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicListContentLikeV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like][%d] publicListContentLikeV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListContentLikeV2BadRequest) ToJSONString() string {
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

func (o *PublicListContentLikeV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListContentLikeV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListContentLikeV2Unauthorized creates a PublicListContentLikeV2Unauthorized with default headers values
func NewPublicListContentLikeV2Unauthorized() *PublicListContentLikeV2Unauthorized {
	return &PublicListContentLikeV2Unauthorized{}
}

/*PublicListContentLikeV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicListContentLikeV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicListContentLikeV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like][%d] publicListContentLikeV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListContentLikeV2Unauthorized) ToJSONString() string {
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

func (o *PublicListContentLikeV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListContentLikeV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListContentLikeV2InternalServerError creates a PublicListContentLikeV2InternalServerError with default headers values
func NewPublicListContentLikeV2InternalServerError() *PublicListContentLikeV2InternalServerError {
	return &PublicListContentLikeV2InternalServerError{}
}

/*PublicListContentLikeV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771006</td><td>unable to get list of content like: database error</td></tr></table>
*/
type PublicListContentLikeV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicListContentLikeV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like][%d] publicListContentLikeV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListContentLikeV2InternalServerError) ToJSONString() string {
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

func (o *PublicListContentLikeV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListContentLikeV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
