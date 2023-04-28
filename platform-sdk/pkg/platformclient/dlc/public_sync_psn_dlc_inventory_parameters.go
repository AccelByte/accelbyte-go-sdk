// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dlc

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewPublicSyncPsnDLCInventoryParams creates a new PublicSyncPsnDLCInventoryParams object
// with the default values initialized.
func NewPublicSyncPsnDLCInventoryParams() *PublicSyncPsnDLCInventoryParams {
	var ()
	return &PublicSyncPsnDLCInventoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSyncPsnDLCInventoryParamsWithTimeout creates a new PublicSyncPsnDLCInventoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSyncPsnDLCInventoryParamsWithTimeout(timeout time.Duration) *PublicSyncPsnDLCInventoryParams {
	var ()
	return &PublicSyncPsnDLCInventoryParams{

		timeout: timeout,
	}
}

// NewPublicSyncPsnDLCInventoryParamsWithContext creates a new PublicSyncPsnDLCInventoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSyncPsnDLCInventoryParamsWithContext(ctx context.Context) *PublicSyncPsnDLCInventoryParams {
	var ()
	return &PublicSyncPsnDLCInventoryParams{

		Context: ctx,
	}
}

// NewPublicSyncPsnDLCInventoryParamsWithHTTPClient creates a new PublicSyncPsnDLCInventoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSyncPsnDLCInventoryParamsWithHTTPClient(client *http.Client) *PublicSyncPsnDLCInventoryParams {
	var ()
	return &PublicSyncPsnDLCInventoryParams{
		HTTPClient: client,
	}
}

/*PublicSyncPsnDLCInventoryParams contains all the parameters to send to the API endpoint
for the public sync psn dlc inventory operation typically these are written to a http.Request
*/
type PublicSyncPsnDLCInventoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PlayStationDLCSyncRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) WithTimeout(timeout time.Duration) *PublicSyncPsnDLCInventoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) WithContext(ctx context.Context) *PublicSyncPsnDLCInventoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) WithHTTPClient(client *http.Client) *PublicSyncPsnDLCInventoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) WithBody(body *platformclientmodels.PlayStationDLCSyncRequest) *PublicSyncPsnDLCInventoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) SetBody(body *platformclientmodels.PlayStationDLCSyncRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) WithNamespace(namespace string) *PublicSyncPsnDLCInventoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) WithUserID(userID string) *PublicSyncPsnDLCInventoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public sync psn dlc inventory params
func (o *PublicSyncPsnDLCInventoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSyncPsnDLCInventoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
