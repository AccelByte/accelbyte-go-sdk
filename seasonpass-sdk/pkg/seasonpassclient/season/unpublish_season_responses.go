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

// UnpublishSeasonReader is a Reader for the UnpublishSeason structure.
type UnpublishSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UnpublishSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUnpublishSeasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUnpublishSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUnpublishSeasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUnpublishSeasonConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUnpublishSeasonOK creates a UnpublishSeasonOK with default headers values
func NewUnpublishSeasonOK() *UnpublishSeasonOK {
	return &UnpublishSeasonOK{}
}

/*UnpublishSeasonOK handles this case with default header values.

  successful operation
*/
type UnpublishSeasonOK struct {
	Payload *seasonpassclientmodels.SeasonInfo
}

func (o *UnpublishSeasonOK) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish][%d] unpublishSeasonOK  %+v", 200, o.ToJSONString())
}

func (o *UnpublishSeasonOK) ToJSONString() string {
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

func (o *UnpublishSeasonOK) GetPayload() *seasonpassclientmodels.SeasonInfo {
	return o.Payload
}

func (o *UnpublishSeasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUnpublishSeasonBadRequest creates a UnpublishSeasonBadRequest with default headers values
func NewUnpublishSeasonBadRequest() *UnpublishSeasonBadRequest {
	return &UnpublishSeasonBadRequest{}
}

/*UnpublishSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type UnpublishSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UnpublishSeasonBadRequest) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish][%d] unpublishSeasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UnpublishSeasonBadRequest) ToJSONString() string {
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

func (o *UnpublishSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnpublishSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUnpublishSeasonNotFound creates a UnpublishSeasonNotFound with default headers values
func NewUnpublishSeasonNotFound() *UnpublishSeasonNotFound {
	return &UnpublishSeasonNotFound{}
}

/*UnpublishSeasonNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UnpublishSeasonNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UnpublishSeasonNotFound) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish][%d] unpublishSeasonNotFound  %+v", 404, o.ToJSONString())
}

func (o *UnpublishSeasonNotFound) ToJSONString() string {
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

func (o *UnpublishSeasonNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnpublishSeasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUnpublishSeasonConflict creates a UnpublishSeasonConflict with default headers values
func NewUnpublishSeasonConflict() *UnpublishSeasonConflict {
	return &UnpublishSeasonConflict{}
}

/*UnpublishSeasonConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr><tr><td>49180</td><td>Season is already started</td></tr></table>
*/
type UnpublishSeasonConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UnpublishSeasonConflict) Error() string {
	return fmt.Sprintf("[PUT /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish][%d] unpublishSeasonConflict  %+v", 409, o.ToJSONString())
}

func (o *UnpublishSeasonConflict) ToJSONString() string {
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

func (o *UnpublishSeasonConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnpublishSeasonConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
