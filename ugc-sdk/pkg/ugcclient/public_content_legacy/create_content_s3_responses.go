// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

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

// CreateContentS3Reader is a Reader for the CreateContentS3 structure.
type CreateContentS3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateContentS3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateContentS3Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateContentS3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateContentS3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateContentS3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3 returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateContentS3Created creates a CreateContentS3Created with default headers values
func NewCreateContentS3Created() *CreateContentS3Created {
	return &CreateContentS3Created{}
}

/*CreateContentS3Created handles this case with default header values.

  Created
*/
type CreateContentS3Created struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *CreateContentS3Created) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3][%d] createContentS3Created  %+v", 201, o.ToJSONString())
}

func (o *CreateContentS3Created) ToJSONString() string {
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

func (o *CreateContentS3Created) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *CreateContentS3Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateContentS3BadRequest creates a CreateContentS3BadRequest with default headers values
func NewCreateContentS3BadRequest() *CreateContentS3BadRequest {
	return &CreateContentS3BadRequest{}
}

/*CreateContentS3BadRequest handles this case with default header values.

  Bad Request
*/
type CreateContentS3BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *CreateContentS3BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3][%d] createContentS3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateContentS3BadRequest) ToJSONString() string {
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

func (o *CreateContentS3BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateContentS3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateContentS3Unauthorized creates a CreateContentS3Unauthorized with default headers values
func NewCreateContentS3Unauthorized() *CreateContentS3Unauthorized {
	return &CreateContentS3Unauthorized{}
}

/*CreateContentS3Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateContentS3Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *CreateContentS3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3][%d] createContentS3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateContentS3Unauthorized) ToJSONString() string {
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

func (o *CreateContentS3Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateContentS3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateContentS3InternalServerError creates a CreateContentS3InternalServerError with default headers values
func NewCreateContentS3InternalServerError() *CreateContentS3InternalServerError {
	return &CreateContentS3InternalServerError{}
}

/*CreateContentS3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateContentS3InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *CreateContentS3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3][%d] createContentS3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateContentS3InternalServerError) ToJSONString() string {
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

func (o *CreateContentS3InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateContentS3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
