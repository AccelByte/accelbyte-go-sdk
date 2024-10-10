// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

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

// PublicBulkClaimUserRewardsReader is a Reader for the PublicBulkClaimUserRewards structure.
type PublicBulkClaimUserRewardsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkClaimUserRewardsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkClaimUserRewardsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBulkClaimUserRewardsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicBulkClaimUserRewardsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkClaimUserRewardsOK creates a PublicBulkClaimUserRewardsOK with default headers values
func NewPublicBulkClaimUserRewardsOK() *PublicBulkClaimUserRewardsOK {
	return &PublicBulkClaimUserRewardsOK{}
}

/*PublicBulkClaimUserRewardsOK handles this case with default header values.

  successful operation
*/
type PublicBulkClaimUserRewardsOK struct {
	Payload *seasonpassclientmodels.ClaimableRewards
}

func (o *PublicBulkClaimUserRewardsOK) Error() string {
	return fmt.Sprintf("[POST /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk][%d] publicBulkClaimUserRewardsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkClaimUserRewardsOK) ToJSONString() string {
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

func (o *PublicBulkClaimUserRewardsOK) GetPayload() *seasonpassclientmodels.ClaimableRewards {
	return o.Payload
}

func (o *PublicBulkClaimUserRewardsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ClaimableRewards)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicBulkClaimUserRewardsBadRequest creates a PublicBulkClaimUserRewardsBadRequest with default headers values
func NewPublicBulkClaimUserRewardsBadRequest() *PublicBulkClaimUserRewardsBadRequest {
	return &PublicBulkClaimUserRewardsBadRequest{}
}

/*PublicBulkClaimUserRewardsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49124</td><td>Manual claim not supported</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type PublicBulkClaimUserRewardsBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicBulkClaimUserRewardsBadRequest) Error() string {
	return fmt.Sprintf("[POST /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk][%d] publicBulkClaimUserRewardsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBulkClaimUserRewardsBadRequest) ToJSONString() string {
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

func (o *PublicBulkClaimUserRewardsBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkClaimUserRewardsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkClaimUserRewardsNotFound creates a PublicBulkClaimUserRewardsNotFound with default headers values
func NewPublicBulkClaimUserRewardsNotFound() *PublicBulkClaimUserRewardsNotFound {
	return &PublicBulkClaimUserRewardsNotFound{}
}

/*PublicBulkClaimUserRewardsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49148</td><td>User season does not exist</td></tr><tr><td>49147</td><td>Published season does not exist</td></tr></table>
*/
type PublicBulkClaimUserRewardsNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *PublicBulkClaimUserRewardsNotFound) Error() string {
	return fmt.Sprintf("[POST /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk][%d] publicBulkClaimUserRewardsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicBulkClaimUserRewardsNotFound) ToJSONString() string {
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

func (o *PublicBulkClaimUserRewardsNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicBulkClaimUserRewardsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
