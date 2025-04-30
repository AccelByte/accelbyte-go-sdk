// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_achievements

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

// NewAdminBulkUnlockAchievementParams creates a new AdminBulkUnlockAchievementParams object
// with the default values initialized.
func NewAdminBulkUnlockAchievementParams() *AdminBulkUnlockAchievementParams {
	var ()
	return &AdminBulkUnlockAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBulkUnlockAchievementParamsWithTimeout creates a new AdminBulkUnlockAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBulkUnlockAchievementParamsWithTimeout(timeout time.Duration) *AdminBulkUnlockAchievementParams {
	var ()
	return &AdminBulkUnlockAchievementParams{

		timeout: timeout,
	}
}

// NewAdminBulkUnlockAchievementParamsWithContext creates a new AdminBulkUnlockAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBulkUnlockAchievementParamsWithContext(ctx context.Context) *AdminBulkUnlockAchievementParams {
	var ()
	return &AdminBulkUnlockAchievementParams{

		Context: ctx,
	}
}

// NewAdminBulkUnlockAchievementParamsWithHTTPClient creates a new AdminBulkUnlockAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBulkUnlockAchievementParamsWithHTTPClient(client *http.Client) *AdminBulkUnlockAchievementParams {
	var ()
	return &AdminBulkUnlockAchievementParams{
		HTTPClient: client,
	}
}

/*AdminBulkUnlockAchievementParams contains all the parameters to send to the API endpoint
for the admin bulk unlock achievement operation typically these are written to a http.Request
*/
type AdminBulkUnlockAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *achievementclientmodels.ModelsBulkUnlockAchievementRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) WithTimeout(timeout time.Duration) *AdminBulkUnlockAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) WithContext(ctx context.Context) *AdminBulkUnlockAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) WithHTTPClient(client *http.Client) *AdminBulkUnlockAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminBulkUnlockAchievementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) WithBody(body *achievementclientmodels.ModelsBulkUnlockAchievementRequest) *AdminBulkUnlockAchievementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) SetBody(body *achievementclientmodels.ModelsBulkUnlockAchievementRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) WithNamespace(namespace string) *AdminBulkUnlockAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) WithUserID(userID string) *AdminBulkUnlockAchievementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin bulk unlock achievement params
func (o *AdminBulkUnlockAchievementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBulkUnlockAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
