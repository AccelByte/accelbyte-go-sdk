// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewBulkUpdateUserStatItemParams creates a new BulkUpdateUserStatItemParams object
// with the default values initialized.
func NewBulkUpdateUserStatItemParams() *BulkUpdateUserStatItemParams {
	var ()
	return &BulkUpdateUserStatItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkUpdateUserStatItemParamsWithTimeout creates a new BulkUpdateUserStatItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkUpdateUserStatItemParamsWithTimeout(timeout time.Duration) *BulkUpdateUserStatItemParams {
	var ()
	return &BulkUpdateUserStatItemParams{

		timeout: timeout,
	}
}

// NewBulkUpdateUserStatItemParamsWithContext creates a new BulkUpdateUserStatItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkUpdateUserStatItemParamsWithContext(ctx context.Context) *BulkUpdateUserStatItemParams {
	var ()
	return &BulkUpdateUserStatItemParams{

		Context: ctx,
	}
}

// NewBulkUpdateUserStatItemParamsWithHTTPClient creates a new BulkUpdateUserStatItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkUpdateUserStatItemParamsWithHTTPClient(client *http.Client) *BulkUpdateUserStatItemParams {
	var ()
	return &BulkUpdateUserStatItemParams{
		HTTPClient: client,
	}
}

/*BulkUpdateUserStatItemParams contains all the parameters to send to the API endpoint
for the bulk update user stat item operation typically these are written to a http.Request
*/
type BulkUpdateUserStatItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.BulkStatItemUpdate
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) WithTimeout(timeout time.Duration) *BulkUpdateUserStatItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) WithContext(ctx context.Context) *BulkUpdateUserStatItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) WithHTTPClient(client *http.Client) *BulkUpdateUserStatItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkUpdateUserStatItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) WithBody(body []*socialclientmodels.BulkStatItemUpdate) *BulkUpdateUserStatItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) SetBody(body []*socialclientmodels.BulkStatItemUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) WithNamespace(namespace string) *BulkUpdateUserStatItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) WithUserID(userID string) *BulkUpdateUserStatItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAdditionalKey adds the additionalKey to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) WithAdditionalKey(additionalKey *string) *BulkUpdateUserStatItemParams {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the bulk update user stat item params
func (o *BulkUpdateUserStatItemParams) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WriteToRequest writes these params to a swagger request
func (o *BulkUpdateUserStatItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.AdditionalKey != nil {

		// query param additionalKey
		var qrAdditionalKey string
		if o.AdditionalKey != nil {
			qrAdditionalKey = *o.AdditionalKey
		}
		qAdditionalKey := qrAdditionalKey
		if qAdditionalKey != "" {
			if err := r.SetQueryParam("additionalKey", qAdditionalKey); err != nil {
				return err
			}
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
