// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package backfill

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// GetBackfillProposalReader is a Reader for the GetBackfillProposal structure.
type GetBackfillProposalReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetBackfillProposalReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetBackfillProposalOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetBackfillProposalBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetBackfillProposalUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetBackfillProposalForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetBackfillProposalNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetBackfillProposalInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/backfill/proposal returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetBackfillProposalOK creates a GetBackfillProposalOK with default headers values
func NewGetBackfillProposalOK() *GetBackfillProposalOK {
	return &GetBackfillProposalOK{}
}

/*GetBackfillProposalOK handles this case with default header values.

  OK
*/
type GetBackfillProposalOK struct {
	Payload *match2clientmodels.APIBackfillProposalResponse
}

func (o *GetBackfillProposalOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/proposal][%d] getBackfillProposalOK  %+v", 200, o.ToJSONString())
}

func (o *GetBackfillProposalOK) ToJSONString() string {
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

func (o *GetBackfillProposalOK) GetPayload() *match2clientmodels.APIBackfillProposalResponse {
	return o.Payload
}

func (o *GetBackfillProposalOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIBackfillProposalResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetBackfillProposalBadRequest creates a GetBackfillProposalBadRequest with default headers values
func NewGetBackfillProposalBadRequest() *GetBackfillProposalBadRequest {
	return &GetBackfillProposalBadRequest{}
}

/*GetBackfillProposalBadRequest handles this case with default header values.

  Bad Request
*/
type GetBackfillProposalBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillProposalBadRequest) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/proposal][%d] getBackfillProposalBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetBackfillProposalBadRequest) ToJSONString() string {
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

func (o *GetBackfillProposalBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillProposalBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetBackfillProposalUnauthorized creates a GetBackfillProposalUnauthorized with default headers values
func NewGetBackfillProposalUnauthorized() *GetBackfillProposalUnauthorized {
	return &GetBackfillProposalUnauthorized{}
}

/*GetBackfillProposalUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetBackfillProposalUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillProposalUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/proposal][%d] getBackfillProposalUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetBackfillProposalUnauthorized) ToJSONString() string {
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

func (o *GetBackfillProposalUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillProposalUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetBackfillProposalForbidden creates a GetBackfillProposalForbidden with default headers values
func NewGetBackfillProposalForbidden() *GetBackfillProposalForbidden {
	return &GetBackfillProposalForbidden{}
}

/*GetBackfillProposalForbidden handles this case with default header values.

  Forbidden
*/
type GetBackfillProposalForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillProposalForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/proposal][%d] getBackfillProposalForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetBackfillProposalForbidden) ToJSONString() string {
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

func (o *GetBackfillProposalForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillProposalForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetBackfillProposalNotFound creates a GetBackfillProposalNotFound with default headers values
func NewGetBackfillProposalNotFound() *GetBackfillProposalNotFound {
	return &GetBackfillProposalNotFound{}
}

/*GetBackfillProposalNotFound handles this case with default header values.

  Not Found
*/
type GetBackfillProposalNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillProposalNotFound) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/proposal][%d] getBackfillProposalNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetBackfillProposalNotFound) ToJSONString() string {
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

func (o *GetBackfillProposalNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillProposalNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetBackfillProposalInternalServerError creates a GetBackfillProposalInternalServerError with default headers values
func NewGetBackfillProposalInternalServerError() *GetBackfillProposalInternalServerError {
	return &GetBackfillProposalInternalServerError{}
}

/*GetBackfillProposalInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetBackfillProposalInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *GetBackfillProposalInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/backfill/proposal][%d] getBackfillProposalInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetBackfillProposalInternalServerError) ToJSONString() string {
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

func (o *GetBackfillProposalInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *GetBackfillProposalInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
