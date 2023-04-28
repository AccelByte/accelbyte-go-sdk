// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// RetireSeasonReader is a Reader for the RetireSeason structure.
type RetireSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetireSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetireSeasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRetireSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetireSeasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRetireSeasonConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetireSeasonOK creates a RetireSeasonOK with default headers values
func NewRetireSeasonOK() *RetireSeasonOK {
	return &RetireSeasonOK{}
}

/*RetireSeasonOK handles this case with default header values.

  successful operation
*/
type RetireSeasonOK struct {
	Payload *seasonpassclientmodels.SeasonInfo
}

func (o *RetireSeasonOK) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire][%d] retireSeasonOK  %+v", 200, o.ToJSONString())
}

func (o *RetireSeasonOK) ToJSONString() string {
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

func (o *RetireSeasonOK) GetPayload() *seasonpassclientmodels.SeasonInfo {
	return o.Payload
}

func (o *RetireSeasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.SeasonInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetireSeasonBadRequest creates a RetireSeasonBadRequest with default headers values
func NewRetireSeasonBadRequest() *RetireSeasonBadRequest {
	return &RetireSeasonBadRequest{}
}

/*RetireSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type RetireSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *RetireSeasonBadRequest) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire][%d] retireSeasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RetireSeasonBadRequest) ToJSONString() string {
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

func (o *RetireSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetireSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetireSeasonNotFound creates a RetireSeasonNotFound with default headers values
func NewRetireSeasonNotFound() *RetireSeasonNotFound {
	return &RetireSeasonNotFound{}
}

/*RetireSeasonNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type RetireSeasonNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *RetireSeasonNotFound) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire][%d] retireSeasonNotFound  %+v", 404, o.ToJSONString())
}

func (o *RetireSeasonNotFound) ToJSONString() string {
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

func (o *RetireSeasonNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetireSeasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetireSeasonConflict creates a RetireSeasonConflict with default headers values
func NewRetireSeasonConflict() *RetireSeasonConflict {
	return &RetireSeasonConflict{}
}

/*RetireSeasonConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr><tr><td>49181</td><td>Season has not ended</td></tr></table>
*/
type RetireSeasonConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *RetireSeasonConflict) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire][%d] retireSeasonConflict  %+v", 409, o.ToJSONString())
}

func (o *RetireSeasonConflict) ToJSONString() string {
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

func (o *RetireSeasonConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetireSeasonConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
