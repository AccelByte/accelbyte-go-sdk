// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// SingleAdminUpdateContentDirectReader is a Reader for the SingleAdminUpdateContentDirect structure.
type SingleAdminUpdateContentDirectReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminUpdateContentDirectReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSingleAdminUpdateContentDirectOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSingleAdminUpdateContentDirectBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminUpdateContentDirectUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminUpdateContentDirectNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminUpdateContentDirectInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminUpdateContentDirectOK creates a SingleAdminUpdateContentDirectOK with default headers values
func NewSingleAdminUpdateContentDirectOK() *SingleAdminUpdateContentDirectOK {
	return &SingleAdminUpdateContentDirectOK{}
}

/*SingleAdminUpdateContentDirectOK handles this case with default header values.

  OK
*/
type SingleAdminUpdateContentDirectOK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *SingleAdminUpdateContentDirectOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectOK  %+v", 200, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectOK) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectOK) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSingleAdminUpdateContentDirectBadRequest creates a SingleAdminUpdateContentDirectBadRequest with default headers values
func NewSingleAdminUpdateContentDirectBadRequest() *SingleAdminUpdateContentDirectBadRequest {
	return &SingleAdminUpdateContentDirectBadRequest{}
}

/*SingleAdminUpdateContentDirectBadRequest handles this case with default header values.

  Bad Request
*/
type SingleAdminUpdateContentDirectBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentDirectBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectBadRequest) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSingleAdminUpdateContentDirectUnauthorized creates a SingleAdminUpdateContentDirectUnauthorized with default headers values
func NewSingleAdminUpdateContentDirectUnauthorized() *SingleAdminUpdateContentDirectUnauthorized {
	return &SingleAdminUpdateContentDirectUnauthorized{}
}

/*SingleAdminUpdateContentDirectUnauthorized handles this case with default header values.

  Unauthorized
*/
type SingleAdminUpdateContentDirectUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentDirectUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectUnauthorized) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSingleAdminUpdateContentDirectNotFound creates a SingleAdminUpdateContentDirectNotFound with default headers values
func NewSingleAdminUpdateContentDirectNotFound() *SingleAdminUpdateContentDirectNotFound {
	return &SingleAdminUpdateContentDirectNotFound{}
}

/*SingleAdminUpdateContentDirectNotFound handles this case with default header values.

  Not Found
*/
type SingleAdminUpdateContentDirectNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentDirectNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectNotFound  %+v", 404, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectNotFound) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSingleAdminUpdateContentDirectInternalServerError creates a SingleAdminUpdateContentDirectInternalServerError with default headers values
func NewSingleAdminUpdateContentDirectInternalServerError() *SingleAdminUpdateContentDirectInternalServerError {
	return &SingleAdminUpdateContentDirectInternalServerError{}
}

/*SingleAdminUpdateContentDirectInternalServerError handles this case with default header values.

  Internal Server Error
*/
type SingleAdminUpdateContentDirectInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentDirectInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] singleAdminUpdateContentDirectInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SingleAdminUpdateContentDirectInternalServerError) ToJSONString() string {
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

func (o *SingleAdminUpdateContentDirectInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentDirectInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
