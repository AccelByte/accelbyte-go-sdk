// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_follow

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

// GetPublicFollowingReader is a Reader for the GetPublicFollowing structure.
type GetPublicFollowingReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPublicFollowingReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPublicFollowingOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPublicFollowingBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPublicFollowingUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPublicFollowingInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/following returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPublicFollowingOK creates a GetPublicFollowingOK with default headers values
func NewGetPublicFollowingOK() *GetPublicFollowingOK {
	return &GetPublicFollowingOK{}
}

/*GetPublicFollowingOK handles this case with default header values.

  Get list of following
*/
type GetPublicFollowingOK struct {
	Payload *ugcclientmodels.ModelsPaginatedCreatorOverviewResponse
}

func (o *GetPublicFollowingOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/following][%d] getPublicFollowingOK  %+v", 200, o.ToJSONString())
}

func (o *GetPublicFollowingOK) ToJSONString() string {
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

func (o *GetPublicFollowingOK) GetPayload() *ugcclientmodels.ModelsPaginatedCreatorOverviewResponse {
	return o.Payload
}

func (o *GetPublicFollowingOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedCreatorOverviewResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetPublicFollowingBadRequest creates a GetPublicFollowingBadRequest with default headers values
func NewGetPublicFollowingBadRequest() *GetPublicFollowingBadRequest {
	return &GetPublicFollowingBadRequest{}
}

/*GetPublicFollowingBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771304</td><td>invalid paging parameter</td></tr></table>
*/
type GetPublicFollowingBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetPublicFollowingBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/following][%d] getPublicFollowingBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetPublicFollowingBadRequest) ToJSONString() string {
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

func (o *GetPublicFollowingBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPublicFollowingBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPublicFollowingUnauthorized creates a GetPublicFollowingUnauthorized with default headers values
func NewGetPublicFollowingUnauthorized() *GetPublicFollowingUnauthorized {
	return &GetPublicFollowingUnauthorized{}
}

/*GetPublicFollowingUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetPublicFollowingUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetPublicFollowingUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/following][%d] getPublicFollowingUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPublicFollowingUnauthorized) ToJSONString() string {
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

func (o *GetPublicFollowingUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPublicFollowingUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetPublicFollowingInternalServerError creates a GetPublicFollowingInternalServerError with default headers values
func NewGetPublicFollowingInternalServerError() *GetPublicFollowingInternalServerError {
	return &GetPublicFollowingInternalServerError{}
}

/*GetPublicFollowingInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771303</td><td>Unable to get creators: database error</td></tr></table>
*/
type GetPublicFollowingInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetPublicFollowingInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/users/{userId}/following][%d] getPublicFollowingInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetPublicFollowingInternalServerError) ToJSONString() string {
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

func (o *GetPublicFollowingInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetPublicFollowingInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
