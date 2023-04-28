// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_pools

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

// MatchPoolDetailsReader is a Reader for the MatchPoolDetails structure.
type MatchPoolDetailsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *MatchPoolDetailsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewMatchPoolDetailsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewMatchPoolDetailsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewMatchPoolDetailsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewMatchPoolDetailsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/match-pools/{pool} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewMatchPoolDetailsOK creates a MatchPoolDetailsOK with default headers values
func NewMatchPoolDetailsOK() *MatchPoolDetailsOK {
	return &MatchPoolDetailsOK{}
}

/*MatchPoolDetailsOK handles this case with default header values.

  Created
*/
type MatchPoolDetailsOK struct {
	Payload *match2clientmodels.APIMatchPool
}

func (o *MatchPoolDetailsOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] matchPoolDetailsOK  %+v", 200, o.ToJSONString())
}

func (o *MatchPoolDetailsOK) ToJSONString() string {
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

func (o *MatchPoolDetailsOK) GetPayload() *match2clientmodels.APIMatchPool {
	return o.Payload
}

func (o *MatchPoolDetailsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIMatchPool)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchPoolDetailsUnauthorized creates a MatchPoolDetailsUnauthorized with default headers values
func NewMatchPoolDetailsUnauthorized() *MatchPoolDetailsUnauthorized {
	return &MatchPoolDetailsUnauthorized{}
}

/*MatchPoolDetailsUnauthorized handles this case with default header values.

  Unauthorized
*/
type MatchPoolDetailsUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolDetailsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] matchPoolDetailsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *MatchPoolDetailsUnauthorized) ToJSONString() string {
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

func (o *MatchPoolDetailsUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolDetailsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewMatchPoolDetailsForbidden creates a MatchPoolDetailsForbidden with default headers values
func NewMatchPoolDetailsForbidden() *MatchPoolDetailsForbidden {
	return &MatchPoolDetailsForbidden{}
}

/*MatchPoolDetailsForbidden handles this case with default header values.

  Forbidden
*/
type MatchPoolDetailsForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolDetailsForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] matchPoolDetailsForbidden  %+v", 403, o.ToJSONString())
}

func (o *MatchPoolDetailsForbidden) ToJSONString() string {
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

func (o *MatchPoolDetailsForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolDetailsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewMatchPoolDetailsInternalServerError creates a MatchPoolDetailsInternalServerError with default headers values
func NewMatchPoolDetailsInternalServerError() *MatchPoolDetailsInternalServerError {
	return &MatchPoolDetailsInternalServerError{}
}

/*MatchPoolDetailsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type MatchPoolDetailsInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchPoolDetailsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] matchPoolDetailsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *MatchPoolDetailsInternalServerError) ToJSONString() string {
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

func (o *MatchPoolDetailsInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchPoolDetailsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
