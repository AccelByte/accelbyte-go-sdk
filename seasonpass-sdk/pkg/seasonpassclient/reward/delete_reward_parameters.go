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
)

// NewDeleteRewardParams creates a new DeleteRewardParams object
// with the default values initialized.
func NewDeleteRewardParams() *DeleteRewardParams {
	var ()
	return &DeleteRewardParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteRewardParamsWithTimeout creates a new DeleteRewardParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteRewardParamsWithTimeout(timeout time.Duration) *DeleteRewardParams {
	var ()
	return &DeleteRewardParams{

		timeout: timeout,
	}
}

// NewDeleteRewardParamsWithContext creates a new DeleteRewardParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteRewardParamsWithContext(ctx context.Context) *DeleteRewardParams {
	var ()
	return &DeleteRewardParams{

		Context: ctx,
	}
}

// NewDeleteRewardParamsWithHTTPClient creates a new DeleteRewardParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteRewardParamsWithHTTPClient(client *http.Client) *DeleteRewardParams {
	var ()
	return &DeleteRewardParams{
		HTTPClient: client,
	}
}

/*DeleteRewardParams contains all the parameters to send to the API endpoint
for the delete reward operation typically these are written to a http.Request
*/
type DeleteRewardParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code*/
	Code string
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete reward params
func (o *DeleteRewardParams) WithTimeout(timeout time.Duration) *DeleteRewardParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete reward params
func (o *DeleteRewardParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete reward params
func (o *DeleteRewardParams) WithContext(ctx context.Context) *DeleteRewardParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete reward params
func (o *DeleteRewardParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete reward params
func (o *DeleteRewardParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete reward params
func (o *DeleteRewardParams) WithHTTPClient(client *http.Client) *DeleteRewardParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete reward params
func (o *DeleteRewardParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete reward params
func (o *DeleteRewardParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteRewardParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCode adds the code to the delete reward params
func (o *DeleteRewardParams) WithCode(code string) *DeleteRewardParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the delete reward params
func (o *DeleteRewardParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the delete reward params
func (o *DeleteRewardParams) WithNamespace(namespace string) *DeleteRewardParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete reward params
func (o *DeleteRewardParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the delete reward params
func (o *DeleteRewardParams) WithSeasonID(seasonID string) *DeleteRewardParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the delete reward params
func (o *DeleteRewardParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteRewardParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param code
	if err := r.SetPathParam("code", o.Code); err != nil {
		return err
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
