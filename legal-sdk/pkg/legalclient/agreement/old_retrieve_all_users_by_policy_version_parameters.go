// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewOldRetrieveAllUsersByPolicyVersionParams creates a new OldRetrieveAllUsersByPolicyVersionParams object
// with the default values initialized.
func NewOldRetrieveAllUsersByPolicyVersionParams() *OldRetrieveAllUsersByPolicyVersionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &OldRetrieveAllUsersByPolicyVersionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewOldRetrieveAllUsersByPolicyVersionParamsWithTimeout creates a new OldRetrieveAllUsersByPolicyVersionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldRetrieveAllUsersByPolicyVersionParamsWithTimeout(timeout time.Duration) *OldRetrieveAllUsersByPolicyVersionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &OldRetrieveAllUsersByPolicyVersionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewOldRetrieveAllUsersByPolicyVersionParamsWithContext creates a new OldRetrieveAllUsersByPolicyVersionParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldRetrieveAllUsersByPolicyVersionParamsWithContext(ctx context.Context) *OldRetrieveAllUsersByPolicyVersionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &OldRetrieveAllUsersByPolicyVersionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewOldRetrieveAllUsersByPolicyVersionParamsWithHTTPClient creates a new OldRetrieveAllUsersByPolicyVersionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldRetrieveAllUsersByPolicyVersionParamsWithHTTPClient(client *http.Client) *OldRetrieveAllUsersByPolicyVersionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &OldRetrieveAllUsersByPolicyVersionParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*OldRetrieveAllUsersByPolicyVersionParams contains all the parameters to send to the API endpoint
for the old retrieve all users by policy version operation typically these are written to a http.Request
*/
type OldRetrieveAllUsersByPolicyVersionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Keyword
	  display name or email or username

	*/
	Keyword *string
	/*Limit
	  limit

	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*PolicyVersionID*/
	PolicyVersionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) WithTimeout(timeout time.Duration) *OldRetrieveAllUsersByPolicyVersionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) WithContext(ctx context.Context) *OldRetrieveAllUsersByPolicyVersionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) WithHTTPClient(client *http.Client) *OldRetrieveAllUsersByPolicyVersionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithKeyword adds the keyword to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) WithKeyword(keyword *string) *OldRetrieveAllUsersByPolicyVersionParams {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetKeyword(keyword *string) {
	o.Keyword = keyword
}

// WithLimit adds the limit to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) WithLimit(limit *int32) *OldRetrieveAllUsersByPolicyVersionParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) WithOffset(offset *int32) *OldRetrieveAllUsersByPolicyVersionParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithPolicyVersionID adds the policyVersionID to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) WithPolicyVersionID(policyVersionID string) *OldRetrieveAllUsersByPolicyVersionParams {
	o.SetPolicyVersionID(policyVersionID)
	return o
}

// SetPolicyVersionID adds the policyVersionId to the old retrieve all users by policy version params
func (o *OldRetrieveAllUsersByPolicyVersionParams) SetPolicyVersionID(policyVersionID string) {
	o.PolicyVersionID = policyVersionID
}

// WriteToRequest writes these params to a swagger request
func (o *OldRetrieveAllUsersByPolicyVersionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Keyword != nil {

		// query param keyword
		var qrKeyword string
		if o.Keyword != nil {
			qrKeyword = *o.Keyword
		}
		qKeyword := qrKeyword
		if qKeyword != "" {
			if err := r.SetQueryParam("keyword", qKeyword); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	// query param policyVersionId
	qrPolicyVersionID := o.PolicyVersionID
	qPolicyVersionID := qrPolicyVersionID
	if qPolicyVersionID != "" {
		if err := r.SetQueryParam("policyVersionId", qPolicyVersionID); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
