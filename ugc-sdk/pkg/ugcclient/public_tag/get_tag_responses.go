// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_tag

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

// GetTagReader is a Reader for the GetTag structure.
type GetTagReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetTagReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetTagOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetTagBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetTagUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetTagInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/tags returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetTagOK creates a GetTagOK with default headers values
func NewGetTagOK() *GetTagOK {
	return &GetTagOK{}
}

/*GetTagOK handles this case with default header values.

  Get tags
*/
type GetTagOK struct {
	Payload *ugcclientmodels.ModelsPaginatedGetTagResponse
}

func (o *GetTagOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/tags][%d] getTagOK  %+v", 200, o.ToJSONString())
}

func (o *GetTagOK) ToJSONString() string {
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

func (o *GetTagOK) GetPayload() *ugcclientmodels.ModelsPaginatedGetTagResponse {
	return o.Payload
}

func (o *GetTagOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedGetTagResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTagBadRequest creates a GetTagBadRequest with default headers values
func NewGetTagBadRequest() *GetTagBadRequest {
	return &GetTagBadRequest{}
}

/*GetTagBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771501</td><td>invalid paging parameter</td></tr></table>
*/
type GetTagBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetTagBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/tags][%d] getTagBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetTagBadRequest) ToJSONString() string {
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

func (o *GetTagBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetTagBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetTagUnauthorized creates a GetTagUnauthorized with default headers values
func NewGetTagUnauthorized() *GetTagUnauthorized {
	return &GetTagUnauthorized{}
}

/*GetTagUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetTagUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetTagUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/tags][%d] getTagUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetTagUnauthorized) ToJSONString() string {
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

func (o *GetTagUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetTagUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetTagInternalServerError creates a GetTagInternalServerError with default headers values
func NewGetTagInternalServerError() *GetTagInternalServerError {
	return &GetTagInternalServerError{}
}

/*GetTagInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>771502</td><td>Unable get user tags</td></tr></table>
*/
type GetTagInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetTagInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/tags][%d] getTagInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetTagInternalServerError) ToJSONString() string {
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

func (o *GetTagInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetTagInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
