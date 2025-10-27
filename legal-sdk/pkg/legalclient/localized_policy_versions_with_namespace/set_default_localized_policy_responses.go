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

// SetDefaultLocalizedPolicyReader is a Reader for the SetDefaultLocalizedPolicy structure.
type SetDefaultLocalizedPolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetDefaultLocalizedPolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSetDefaultLocalizedPolicyOK()
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

// NewSetDefaultLocalizedPolicyOK creates a SetDefaultLocalizedPolicyOK with default headers values
func NewSetDefaultLocalizedPolicyOK() *SetDefaultLocalizedPolicyOK {
	return &SetDefaultLocalizedPolicyOK{}
}

/*SetDefaultLocalizedPolicyOK handles this case with default header values.

  successful operation
*/
type SetDefaultLocalizedPolicyOK struct {
}

func (o *SetDefaultLocalizedPolicyOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default][%d] setDefaultLocalizedPolicyOK ", 200)
}

func (o *SetDefaultLocalizedPolicyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
