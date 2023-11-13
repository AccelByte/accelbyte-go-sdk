// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package slot

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

// NewPublicUpdateUserNamespaceSlotParams creates a new PublicUpdateUserNamespaceSlotParams object
// with the default values initialized.
func NewPublicUpdateUserNamespaceSlotParams() *PublicUpdateUserNamespaceSlotParams {
	var ()
	return &PublicUpdateUserNamespaceSlotParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateUserNamespaceSlotParamsWithTimeout creates a new PublicUpdateUserNamespaceSlotParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateUserNamespaceSlotParamsWithTimeout(timeout time.Duration) *PublicUpdateUserNamespaceSlotParams {
	var ()
	return &PublicUpdateUserNamespaceSlotParams{

		timeout: timeout,
	}
}

// NewPublicUpdateUserNamespaceSlotParamsWithContext creates a new PublicUpdateUserNamespaceSlotParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateUserNamespaceSlotParamsWithContext(ctx context.Context) *PublicUpdateUserNamespaceSlotParams {
	var ()
	return &PublicUpdateUserNamespaceSlotParams{

		Context: ctx,
	}
}

// NewPublicUpdateUserNamespaceSlotParamsWithHTTPClient creates a new PublicUpdateUserNamespaceSlotParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateUserNamespaceSlotParamsWithHTTPClient(client *http.Client) *PublicUpdateUserNamespaceSlotParams {
	var ()
	return &PublicUpdateUserNamespaceSlotParams{
		HTTPClient: client,
	}
}

/*PublicUpdateUserNamespaceSlotParams contains all the parameters to send to the API endpoint
for the public update user namespace slot operation typically these are written to a http.Request
*/
type PublicUpdateUserNamespaceSlotParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Checksum
	  File checksum

	*/
	Checksum *string
	/*CustomAttribute
	  Custom attribute

	*/
	CustomAttribute *string
	/*File*/
	File runtime.NamedReadCloser
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*SlotID
	  Slot ID

	*/
	SlotID string
	/*UserID
	  User ID

	*/
	UserID string
	/*Label
	  Label

	*/
	Label *string
	/*Tags
	  Tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithTimeout(timeout time.Duration) *PublicUpdateUserNamespaceSlotParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithContext(ctx context.Context) *PublicUpdateUserNamespaceSlotParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithHTTPClient(client *http.Client) *PublicUpdateUserNamespaceSlotParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChecksum adds the checksum to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithChecksum(checksum *string) *PublicUpdateUserNamespaceSlotParams {
	o.SetChecksum(checksum)
	return o
}

// SetChecksum adds the checksum to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetChecksum(checksum *string) {
	o.Checksum = checksum
}

// WithCustomAttribute adds the customAttribute to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithCustomAttribute(customAttribute *string) *PublicUpdateUserNamespaceSlotParams {
	o.SetCustomAttribute(customAttribute)
	return o
}

// SetCustomAttribute adds the customAttribute to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetCustomAttribute(customAttribute *string) {
	o.CustomAttribute = customAttribute
}

// WithFile adds the file to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithFile(file runtime.NamedReadCloser) *PublicUpdateUserNamespaceSlotParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithNamespace(namespace string) *PublicUpdateUserNamespaceSlotParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSlotID adds the slotID to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithSlotID(slotID string) *PublicUpdateUserNamespaceSlotParams {
	o.SetSlotID(slotID)
	return o
}

// SetSlotID adds the slotId to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetSlotID(slotID string) {
	o.SlotID = slotID
}

// WithUserID adds the userID to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithUserID(userID string) *PublicUpdateUserNamespaceSlotParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLabel adds the label to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithLabel(label *string) *PublicUpdateUserNamespaceSlotParams {
	o.SetLabel(label)
	return o
}

// SetLabel adds the label to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetLabel(label *string) {
	o.Label = label
}

// WithTags adds the tags to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) WithTags(tags []string) *PublicUpdateUserNamespaceSlotParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public update user namespace slot params
func (o *PublicUpdateUserNamespaceSlotParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateUserNamespaceSlotParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Checksum != nil {

		// form param checksum
		var frChecksum string
		if o.Checksum != nil {
			frChecksum = *o.Checksum
		}
		fChecksum := frChecksum
		if fChecksum != "" {
			if err := r.SetFormParam("checksum", fChecksum); err != nil {
				return err
			}
		}

	}

	if o.CustomAttribute != nil {

		// form param customAttribute
		var frCustomAttribute string
		if o.CustomAttribute != nil {
			frCustomAttribute = *o.CustomAttribute
		}
		fCustomAttribute := frCustomAttribute
		if fCustomAttribute != "" {
			if err := r.SetFormParam("customAttribute", fCustomAttribute); err != nil {
				return err
			}
		}

	}

	if o.File != nil {

		if o.File != nil {

			// form file param file
			if err := r.SetFileParam("file", o.File); err != nil {
				return err
			}

		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param slotId
	if err := r.SetPathParam("slotId", o.SlotID); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.Label != nil {

		// query param label
		var qrLabel string
		if o.Label != nil {
			qrLabel = *o.Label
		}
		qLabel := qrLabel
		if qLabel != "" {
			if err := r.SetQueryParam("label", qLabel); err != nil {
				return err
			}
		}

	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "multi")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
