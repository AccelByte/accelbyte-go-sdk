// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievements

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

// NewAdminDeleteAchievementParams creates a new AdminDeleteAchievementParams object
// with the default values initialized.
func NewAdminDeleteAchievementParams() *AdminDeleteAchievementParams {
	var ()
	return &AdminDeleteAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteAchievementParamsWithTimeout creates a new AdminDeleteAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteAchievementParamsWithTimeout(timeout time.Duration) *AdminDeleteAchievementParams {
	var ()
	return &AdminDeleteAchievementParams{

		timeout: timeout,
	}
}

// NewAdminDeleteAchievementParamsWithContext creates a new AdminDeleteAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteAchievementParamsWithContext(ctx context.Context) *AdminDeleteAchievementParams {
	var ()
	return &AdminDeleteAchievementParams{

		Context: ctx,
	}
}

// NewAdminDeleteAchievementParamsWithHTTPClient creates a new AdminDeleteAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteAchievementParamsWithHTTPClient(client *http.Client) *AdminDeleteAchievementParams {
	var ()
	return &AdminDeleteAchievementParams{
		HTTPClient: client,
	}
}

/*AdminDeleteAchievementParams contains all the parameters to send to the API endpoint
for the admin delete achievement operation typically these are written to a http.Request
*/
type AdminDeleteAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AchievementCode
	  achievement code

	*/
	AchievementCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete achievement params
func (o *AdminDeleteAchievementParams) WithTimeout(timeout time.Duration) *AdminDeleteAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete achievement params
func (o *AdminDeleteAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete achievement params
func (o *AdminDeleteAchievementParams) WithContext(ctx context.Context) *AdminDeleteAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete achievement params
func (o *AdminDeleteAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete achievement params
func (o *AdminDeleteAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete achievement params
func (o *AdminDeleteAchievementParams) WithHTTPClient(client *http.Client) *AdminDeleteAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete achievement params
func (o *AdminDeleteAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete achievement params
func (o *AdminDeleteAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteAchievementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAchievementCode adds the achievementCode to the admin delete achievement params
func (o *AdminDeleteAchievementParams) WithAchievementCode(achievementCode string) *AdminDeleteAchievementParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the admin delete achievement params
func (o *AdminDeleteAchievementParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the admin delete achievement params
func (o *AdminDeleteAchievementParams) WithNamespace(namespace string) *AdminDeleteAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete achievement params
func (o *AdminDeleteAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param achievementCode
	if err := r.SetPathParam("achievementCode", o.AchievementCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
