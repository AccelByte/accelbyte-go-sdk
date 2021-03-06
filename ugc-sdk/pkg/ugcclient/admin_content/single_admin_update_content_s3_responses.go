// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_content

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// SingleAdminUpdateContentS3Reader is a Reader for the SingleAdminUpdateContentS3 structure.
type SingleAdminUpdateContentS3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SingleAdminUpdateContentS3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSingleAdminUpdateContentS3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSingleAdminUpdateContentS3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSingleAdminUpdateContentS3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSingleAdminUpdateContentS3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSingleAdminUpdateContentS3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSingleAdminUpdateContentS3OK creates a SingleAdminUpdateContentS3OK with default headers values
func NewSingleAdminUpdateContentS3OK() *SingleAdminUpdateContentS3OK {
	return &SingleAdminUpdateContentS3OK{}
}

/*SingleAdminUpdateContentS3OK handles this case with default header values.

  OK
*/
type SingleAdminUpdateContentS3OK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *SingleAdminUpdateContentS3OK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}][%d] singleAdminUpdateContentS3OK  %+v", 200, o.Payload)
}

func (o *SingleAdminUpdateContentS3OK) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *SingleAdminUpdateContentS3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminUpdateContentS3BadRequest creates a SingleAdminUpdateContentS3BadRequest with default headers values
func NewSingleAdminUpdateContentS3BadRequest() *SingleAdminUpdateContentS3BadRequest {
	return &SingleAdminUpdateContentS3BadRequest{}
}

/*SingleAdminUpdateContentS3BadRequest handles this case with default header values.

  Bad Request
*/
type SingleAdminUpdateContentS3BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentS3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}][%d] singleAdminUpdateContentS3BadRequest  %+v", 400, o.Payload)
}

func (o *SingleAdminUpdateContentS3BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentS3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminUpdateContentS3Unauthorized creates a SingleAdminUpdateContentS3Unauthorized with default headers values
func NewSingleAdminUpdateContentS3Unauthorized() *SingleAdminUpdateContentS3Unauthorized {
	return &SingleAdminUpdateContentS3Unauthorized{}
}

/*SingleAdminUpdateContentS3Unauthorized handles this case with default header values.

  Unauthorized
*/
type SingleAdminUpdateContentS3Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentS3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}][%d] singleAdminUpdateContentS3Unauthorized  %+v", 401, o.Payload)
}

func (o *SingleAdminUpdateContentS3Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentS3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminUpdateContentS3NotFound creates a SingleAdminUpdateContentS3NotFound with default headers values
func NewSingleAdminUpdateContentS3NotFound() *SingleAdminUpdateContentS3NotFound {
	return &SingleAdminUpdateContentS3NotFound{}
}

/*SingleAdminUpdateContentS3NotFound handles this case with default header values.

  Not Found
*/
type SingleAdminUpdateContentS3NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentS3NotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}][%d] singleAdminUpdateContentS3NotFound  %+v", 404, o.Payload)
}

func (o *SingleAdminUpdateContentS3NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentS3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSingleAdminUpdateContentS3InternalServerError creates a SingleAdminUpdateContentS3InternalServerError with default headers values
func NewSingleAdminUpdateContentS3InternalServerError() *SingleAdminUpdateContentS3InternalServerError {
	return &SingleAdminUpdateContentS3InternalServerError{}
}

/*SingleAdminUpdateContentS3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type SingleAdminUpdateContentS3InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SingleAdminUpdateContentS3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}][%d] singleAdminUpdateContentS3InternalServerError  %+v", 500, o.Payload)
}

func (o *SingleAdminUpdateContentS3InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SingleAdminUpdateContentS3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
