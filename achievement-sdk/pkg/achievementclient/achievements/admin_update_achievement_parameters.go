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

// NewAdminUpdateAchievementParams creates a new AdminUpdateAchievementParams object
// with the default values initialized.
func NewAdminUpdateAchievementParams() *AdminUpdateAchievementParams {
	var ()
	return &AdminUpdateAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateAchievementParamsWithTimeout creates a new AdminUpdateAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateAchievementParamsWithTimeout(timeout time.Duration) *AdminUpdateAchievementParams {
	var ()
	return &AdminUpdateAchievementParams{

		timeout: timeout,
	}
}

// NewAdminUpdateAchievementParamsWithContext creates a new AdminUpdateAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateAchievementParamsWithContext(ctx context.Context) *AdminUpdateAchievementParams {
	var ()
	return &AdminUpdateAchievementParams{

		Context: ctx,
	}
}

// NewAdminUpdateAchievementParamsWithHTTPClient creates a new AdminUpdateAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateAchievementParamsWithHTTPClient(client *http.Client) *AdminUpdateAchievementParams {
	var ()
	return &AdminUpdateAchievementParams{
		HTTPClient: client,
	}
}

/*AdminUpdateAchievementParams contains all the parameters to send to the API endpoint
for the admin update achievement operation typically these are written to a http.Request
*/
type AdminUpdateAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *achievementclientmodels.ModelsAchievementUpdateRequest
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
}

// WithTimeout adds the timeout to the admin update achievement params
func (o *AdminUpdateAchievementParams) WithTimeout(timeout time.Duration) *AdminUpdateAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update achievement params
func (o *AdminUpdateAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update achievement params
func (o *AdminUpdateAchievementParams) WithContext(ctx context.Context) *AdminUpdateAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update achievement params
func (o *AdminUpdateAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update achievement params
func (o *AdminUpdateAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update achievement params
func (o *AdminUpdateAchievementParams) WithHTTPClient(client *http.Client) *AdminUpdateAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update achievement params
func (o *AdminUpdateAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update achievement params
func (o *AdminUpdateAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update achievement params
func (o *AdminUpdateAchievementParams) WithBody(body *achievementclientmodels.ModelsAchievementUpdateRequest) *AdminUpdateAchievementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update achievement params
func (o *AdminUpdateAchievementParams) SetBody(body *achievementclientmodels.ModelsAchievementUpdateRequest) {
	o.Body = body
}

// WithAchievementCode adds the achievementCode to the admin update achievement params
func (o *AdminUpdateAchievementParams) WithAchievementCode(achievementCode string) *AdminUpdateAchievementParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the admin update achievement params
func (o *AdminUpdateAchievementParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the admin update achievement params
func (o *AdminUpdateAchievementParams) WithNamespace(namespace string) *AdminUpdateAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update achievement params
func (o *AdminUpdateAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
