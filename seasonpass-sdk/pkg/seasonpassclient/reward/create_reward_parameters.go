// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// NewCreateRewardParams creates a new CreateRewardParams object
// with the default values initialized.
func NewCreateRewardParams() *CreateRewardParams {
	var ()
	return &CreateRewardParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateRewardParamsWithTimeout creates a new CreateRewardParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateRewardParamsWithTimeout(timeout time.Duration) *CreateRewardParams {
	var ()
	return &CreateRewardParams{

		timeout: timeout,
	}
}

// NewCreateRewardParamsWithContext creates a new CreateRewardParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateRewardParamsWithContext(ctx context.Context) *CreateRewardParams {
	var ()
	return &CreateRewardParams{

		Context: ctx,
	}
}

// NewCreateRewardParamsWithHTTPClient creates a new CreateRewardParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateRewardParamsWithHTTPClient(client *http.Client) *CreateRewardParams {
	var ()
	return &CreateRewardParams{
		HTTPClient: client,
	}
}

/*CreateRewardParams contains all the parameters to send to the API endpoint
for the create reward operation typically these are written to a http.Request
*/
type CreateRewardParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.RewardCreate
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create reward params
func (o *CreateRewardParams) WithTimeout(timeout time.Duration) *CreateRewardParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create reward params
func (o *CreateRewardParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create reward params
func (o *CreateRewardParams) WithContext(ctx context.Context) *CreateRewardParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create reward params
func (o *CreateRewardParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create reward params
func (o *CreateRewardParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create reward params
func (o *CreateRewardParams) WithHTTPClient(client *http.Client) *CreateRewardParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create reward params
func (o *CreateRewardParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create reward params
func (o *CreateRewardParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create reward params
func (o *CreateRewardParams) WithBody(body *seasonpassclientmodels.RewardCreate) *CreateRewardParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create reward params
func (o *CreateRewardParams) SetBody(body *seasonpassclientmodels.RewardCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create reward params
func (o *CreateRewardParams) WithNamespace(namespace string) *CreateRewardParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create reward params
func (o *CreateRewardParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the create reward params
func (o *CreateRewardParams) WithSeasonID(seasonID string) *CreateRewardParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the create reward params
func (o *CreateRewardParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateRewardParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
