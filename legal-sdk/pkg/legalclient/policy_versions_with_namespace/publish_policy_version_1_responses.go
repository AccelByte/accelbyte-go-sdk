// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policy_versions_with_namespace

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// PublishPolicyVersion1Reader is a Reader for the PublishPolicyVersion1 structure.
type PublishPolicyVersion1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublishPolicyVersion1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublishPolicyVersion1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublishPolicyVersion1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublishPolicyVersion1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublishPolicyVersion1OK creates a PublishPolicyVersion1OK with default headers values
func NewPublishPolicyVersion1OK() *PublishPolicyVersion1OK {
	return &PublishPolicyVersion1OK{}
}

/*PublishPolicyVersion1OK handles this case with default header values.

  operation successful
*/
type PublishPolicyVersion1OK struct {
}

func (o *PublishPolicyVersion1OK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest][%d] publishPolicyVersion1OK ", 200)
}

func (o *PublishPolicyVersion1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublishPolicyVersion1BadRequest creates a PublishPolicyVersion1BadRequest with default headers values
func NewPublishPolicyVersion1BadRequest() *PublishPolicyVersion1BadRequest {
	return &PublishPolicyVersion1BadRequest{}
}

/*PublishPolicyVersion1BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr><tr><td>40046</td><td>errors.net.accelbyte.platform.legal.default_selection_not_provided</td></tr><tr><td>40030</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_not_provided</td></tr></table>
*/
type PublishPolicyVersion1BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *PublishPolicyVersion1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest][%d] publishPolicyVersion1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublishPolicyVersion1BadRequest) ToJSONString() string {
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

func (o *PublishPolicyVersion1BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublishPolicyVersion1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublishPolicyVersion1Conflict creates a PublishPolicyVersion1Conflict with default headers values
func NewPublishPolicyVersion1Conflict() *PublishPolicyVersion1Conflict {
	return &PublishPolicyVersion1Conflict{}
}

/*PublishPolicyVersion1Conflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40039</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_latest</td></tr><tr><td>40043</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_publish</td></tr></table>
*/
type PublishPolicyVersion1Conflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *PublishPolicyVersion1Conflict) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest][%d] publishPolicyVersion1Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublishPolicyVersion1Conflict) ToJSONString() string {
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

func (o *PublishPolicyVersion1Conflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublishPolicyVersion1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
