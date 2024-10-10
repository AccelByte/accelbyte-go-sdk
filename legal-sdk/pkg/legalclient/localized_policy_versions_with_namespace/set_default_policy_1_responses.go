// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions_with_namespace

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// SetDefaultPolicy1Reader is a Reader for the SetDefaultPolicy1 structure.
type SetDefaultPolicy1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetDefaultPolicy1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSetDefaultPolicy1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetDefaultPolicy1OK creates a SetDefaultPolicy1OK with default headers values
func NewSetDefaultPolicy1OK() *SetDefaultPolicy1OK {
	return &SetDefaultPolicy1OK{}
}

/*SetDefaultPolicy1OK handles this case with default header values.

  successful operation
*/
type SetDefaultPolicy1OK struct {
}

func (o *SetDefaultPolicy1OK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default][%d] setDefaultPolicy1OK ", 200)
}

func (o *SetDefaultPolicy1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
