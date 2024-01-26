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

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
)

// NewAdminCreateNewAchievementParams creates a new AdminCreateNewAchievementParams object
// with the default values initialized.
func NewAdminCreateNewAchievementParams() *AdminCreateNewAchievementParams {
	var ()
	return &AdminCreateNewAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateNewAchievementParamsWithTimeout creates a new AdminCreateNewAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateNewAchievementParamsWithTimeout(timeout time.Duration) *AdminCreateNewAchievementParams {
	var ()
	return &AdminCreateNewAchievementParams{

		timeout: timeout,
	}
}

// NewAdminCreateNewAchievementParamsWithContext creates a new AdminCreateNewAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateNewAchievementParamsWithContext(ctx context.Context) *AdminCreateNewAchievementParams {
	var ()
	return &AdminCreateNewAchievementParams{

		Context: ctx,
	}
}

// NewAdminCreateNewAchievementParamsWithHTTPClient creates a new AdminCreateNewAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateNewAchievementParamsWithHTTPClient(client *http.Client) *AdminCreateNewAchievementParams {
	var ()
	return &AdminCreateNewAchievementParams{
		HTTPClient: client,
	}
}

/*AdminCreateNewAchievementParams contains all the parameters to send to the API endpoint
for the admin create new achievement operation typically these are written to a http.Request
*/
type AdminCreateNewAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *achievementclientmodels.ModelsAchievementRequest
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

// WithTimeout adds the timeout to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) WithTimeout(timeout time.Duration) *AdminCreateNewAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) WithContext(ctx context.Context) *AdminCreateNewAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) WithHTTPClient(client *http.Client) *AdminCreateNewAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCreateNewAchievementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) WithBody(body *achievementclientmodels.ModelsAchievementRequest) *AdminCreateNewAchievementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) SetBody(body *achievementclientmodels.ModelsAchievementRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) WithNamespace(namespace string) *AdminCreateNewAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create new achievement params
func (o *AdminCreateNewAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateNewAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
